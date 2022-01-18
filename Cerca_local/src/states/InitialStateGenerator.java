package states;

import IA.Gasolina.Gasolinera;
import states.*;

import java.util.*;

import static states.State.getDistancia;

public class InitialStateGenerator {

    private static ArrayList<Camio> generaCamionsInicials(int n, int camionsxCD) {
        ArrayList<Camio> retVal = new ArrayList<>();
        for (int i = 0; i < n; ++i) {
            for (int j = 0; j < camionsxCD; ++j) {
                Camio c = new Camio(i);
                retVal.add(c);
            }
        }
        return retVal;
    }

    public static State greedySolution(Camio fantasma, int ncds, int camionsxCD){
        //Camio fantasma amb totes les peticions no servides
        //Array amb camions buits
        ArrayList<Camio> ac = generaCamionsInicials(ncds, camionsxCD);
        int n = fantasma.numDestins();
        //Priority queue de menys a més i amb id

        PriorityQueue<PairInt> pq= new PriorityQueue<PairInt>(n);
        for(int i = 0; i < n; ++i){
            pq.add(new PairInt(fantasma.getDestiIesim(i),fantasma.getDiesPeticioIesima(i)));
        }
        TreeSet<Integer> iesborrarf = new TreeSet<Integer>();
        for(int i = 0; i < n ; ++i){
            PairInt pi = pq.poll();
            PairInt min = null;
            int idc = -1;
            boolean solution = true;

            while(solution && fantasma.teDestins()){
                solution = false;
                for(int j = 0; j< ac.size(); ++j){
                    int dist = State.getDistancia(ac.get(j).getCD(), pi.getKey());
                    if ((min == null || min.getVal() > dist) && ac.get(j).getKmLeft()-dist >= 0 && ac.get(j).getDiposit() > 0){
                        min = new PairInt(pi.getKey(), pi.getVal()); //pi.get
                        idc = j;
                        solution = true;
                    }else if(ac.get(j).getDiposit() == 0 && ac.get(j).getViatges() < 4){
                        //Comprovar si pot tornar al centre de distribució
                        int cd = ac.get(j).getCD();
                        int actual = ac.get(j).getLastDesti();
                        int kmleft = ac.get(j).getKmLeft();
                        if(State.getDistancia(actual, cd) <= kmleft){
                            ac.get(j).addDestiCentreDist();
                            solution = true;
                        }
                    }
                }
                if(min != null){
                    iesborrarf.add(-min.getKey()); // Ordre decreixent
                    Camio c = ac.get(idc);
                    c.addDestiGasolinera(min.getKey(), min.getVal());
                }
            }
        }
        for(Integer in : iesborrarf){
            fantasma.esborrarDestiIesim(-in);
        }
        return new State( ac, fantasma);
    }

    public static State randomSolution(Camio fantasma, int ncds, int camionsxCD){
        Random rand = new Random();
        int random = rand.nextInt(ncds);
        ArrayList<Camio> disp = generaCamionsInicials(ncds, camionsxCD);
        ArrayList<Camio> ndisp = new ArrayList<>();
        while(fantasma.numDestins() > 0 && disp.size() > 0){
            //Agafar destí random
            int destir = rand.nextInt(fantasma.numDestins());
            //Agafar ac disponible random
            int rac = rand.nextInt(disp.size());
            Camio c = disp.get(rac);
            int dist = getDistancia(c.getCD(), fantasma.getDestiIesim(destir));
            if(c.getKmLeft()-dist > 0 && c.getDiposit() > 0){
                c.addDestiGasolinera(fantasma.getDestiIesim(destir),fantasma.getDiesPeticioIesima(destir));
                fantasma.esborrarDestiIesim(destir);
            }else if(c.getDiposit()==0 && State.getDistancia(c.getLastDesti(), c.getCD()) <= c.getKmLeft() && c.getViatges() < 5) {
                c.addDestiCentreDist();
            }else{
                ndisp.add(c);
                disp.remove(rac);
            }

        }
        ndisp.addAll(disp);
        return new State(ndisp,fantasma );
    }

    public static State naiveSolution(Camio fantasma, int ncds, int camionsxCD) {
        //Creem array de camions sense trajecte
        ArrayList<Camio> camions = generaCamionsInicials(ncds, camionsxCD);

        State naiveSolution = new State(camions, fantasma);
        return naiveSolution;
    }
}
