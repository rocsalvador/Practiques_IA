package states;

import IA.Gasolina.CentrosDistribucion;
import IA.Gasolina.Gasolineras;

import java.util.*;

public class State {
    /**
     * Distancies entre centres de distribucio i gasolineres
     */
    public static int[][] distancies;

    private ArrayList<Camio> camions;
    private Camio fantasma;

    public State(ArrayList<Camio> camions, Camio fantasma) {
        this.camions = camions;
        this.fantasma = fantasma;
    }

    public State(State state) {
        this.camions = new ArrayList<>();
        for (Camio camio : state.camions) {
            camions.add(new Camio(camio));
        }

        fantasma = new Camio(state.fantasma);
    }

    public static int getDistancia(int id1, int id2) {
        if (id1 == id2) return 0;
        else if (id1 < id2) return distancies[id1][id2];
        else return distancies[id2][id1];
    }

    public Camio getCamioIesim(int i) {
        return this.camions.get(i);
    }

    //Funció afegida provisionalment
    public ArrayList<Camio> getCamions() {
        return this.camions;
    }

    public int getNumCamions() {
        return this.camions.size();
    }

    public Camio getFantasma() {
        return this.fantasma;
    }

    // Operadors:

    public State addDestiCentreDistribucio(int camio) {
        State cp = new State(this);

        cp.camions.get(camio).addDestiCentreDist();

        return cp;
    }

    public State addDestiGasolinera(int camio, int destiIesim_fantasma) {
        State cp = new State(this);

        int pos = cp.fantasma.getDestiIesim(destiIesim_fantasma);
        int dies = cp.fantasma.getDiesPeticioIesima(destiIesim_fantasma);

        cp.fantasma.esborrarDestiIesim(destiIesim_fantasma);
        cp.camions.get(camio).addDestiGasolinera(pos, dies);

        return cp;
    }

    public State swapDestins(int camio_a, int destiIesim_a, int camio_b, int destiIesim_b) {
        State cp = new State(this);

        Camio a = cp.camions.get(camio_a);
        Camio b = cp.camions.get(camio_b);
        Camio.swapDestins(a, destiIesim_a, b, destiIesim_b);

        return cp;
    }

    public State swapDestinsFantasma(int camio, int desti_camio, int desti_fantasma) {
        State cp = new State(this);

        Camio c = cp.camions.get(camio);
        Camio.swapDestins(c, desti_camio, cp.fantasma, desti_fantasma);

        return cp;
    }

    /* No usat de moment
    public void removeDesti(int camio) {
        Posicio pos = this.camions.get(camio).getLastDesti();
        this.camions.get(camio).removeLast();

        if (posGasolineres.contains(pos)) {

        }
    }

    public boolean noProfitLeftToGain() {
        Per cada camió:
            1. Comprovar si ha gastat tots els seus viatges o tots els seus kms
            2. Si anterior fals, prenem l'última Posició del seu Trajecte
            3. Comprovar si afegint tot possible destí-gasolinera sobrepassa els seus kms màxims

        for (int i = 0; i < camions.size(); ++i) {
        if (!camions.get(i).noViatgesLeft() & !camions.get(i).noKmLeft()) {    //si li queden viatges o kms al camió
            Posicio pos_camio = camions.get(i).getLastDesti();
            double kms_left = camions.get(i).getKmLeft();

            if (camions.get(i).getDiposit() > 0) {  //si no ha de passar per un CD
                if (noServides.algunaPeticioAcessible(pos_camio, kms_left)) return false;

            } else {    //si sí ha de passar per un CD
                if (noServides.algunaPeticioAcessible(
                        pos_camio,
                        kms_left - pos_camio.distancia(pos_camio, camions.get(i).getCD()))
                ) return false;
            }
        }
    }
        return true;
    }
    */
}
