package main;

import IA.Gasolina.*;
import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;
import states.*;
import aima_functions.*;

import java.util.*;


public class Main {
    public static void main(String[] args) throws Exception {
        long t1 = System.currentTimeMillis();
        defGlobals();
        experimento();
        System.out.println("Elapsed time: " + (System.currentTimeMillis() - t1) + " ms");
    }

    public static void defGlobals() {
        Scanner sc = new Scanner(System.in);

        System.out.print("Selecciona Estat Inicial {1: Naive, 2: Greedy, 3: Random}: ");
        Global.solution = sc.nextInt();
        if (Global.solution < 1 || Global.solution > 3) System.exit(-1);

        System.out.print("Selecciona Heurístic {1: Beneficis nets, 2: Quocient, 3: Beneficis+Diposits, 4: Bonus per CD}: ");
        Global.heuristic = sc.nextInt();
        if (Global.heuristic < 1 || Global.solution > 3) System.exit(-1);

        System.out.print("Selecciona Cerca {1: Hill Climbing, 2: Simulated Annealing}: ");
        Global.hillClimbing = sc.nextInt() == 1;

        System.out.print("Especifica la seed (-1 == Random): ");
        Global.seed = sc.nextInt();
        if (Global.seed == -1) {
            Random rand = new Random();
            Global.seed = rand.nextInt();
        }

        System.out.print("Especifica el nombre de gasolineres: ");
        Global.ngas = sc.nextInt();

        System.out.print("Especifica el nombre de centres de distribució: ");
        Global.ncds = sc.nextInt();

        System.out.print("Especifica el nombre de camions per centre: ");
        Global.camionsperCD = sc.nextInt();
    }

    public static void experimento() throws Exception {
        int ncds = Global.ncds, ngas = Global.ngas, camionsperCD = Global.camionsperCD;
        int seed = Global.seed;

        Gasolineras g = new Gasolineras(ngas, seed);
        CentrosDistribucion c = new CentrosDistribucion(ncds, camionsperCD, seed);

        int id = 0;
        State.distancies = new int[ncds*camionsperCD+ngas][ncds*camionsperCD+ngas];
        for (Distribucion d1 : c) {
            Posicio p1 = new Posicio(d1.getCoordX(), d1.getCoordY());
            int id_aux = ncds;
            for (Gasolinera gs : g) {
                Posicio p2 = new Posicio(gs.getCoordX(), gs.getCoordY());
                State.distancies[id][id_aux] = Posicio.distancia(p1, p2);
                ++id_aux;
            }
            ++id;
        }

        int offset_id = id;
        Camio fantasma = new Camio(0);
        for (Gasolinera gs1 : g) {
            //Afegim peticions de cada gasolinera al camió fantasma
            ArrayList<Integer> peticions = gs1.getPeticiones();
            for(Integer dies : peticions) {
                fantasma.addDestiGasolinera(id, dies);
            }

            Posicio p1 = new Posicio(gs1.getCoordX(), gs1.getCoordY());
            int id_aux = 0;
            for (Gasolinera gs2 : g) {
                if (id_aux > id - offset_id) {
                    Posicio p2 = new Posicio(gs2.getCoordX(), gs2.getCoordY());
                    State.distancies[id][offset_id + id_aux] = Posicio.distancia(p1, p2);
                }
                ++id_aux;
            }
            ++id;
        }
        State s;
        switch (Global.solution){
            case 1:
                s = InitialStateGenerator.naiveSolution(fantasma, ncds, camionsperCD);
                break;
            case 2:
                s = InitialStateGenerator.greedySolution(fantasma, ncds, camionsperCD);
                break;
            case 3:
                s = InitialStateGenerator.randomSolution(fantasma, ncds, camionsperCD);
                break;
            default:
                s = InitialStateGenerator.naiveSolution(fantasma, ncds, camionsperCD);
                break;
        }
        System.out.println("Benefici total abans de la cerca: "+ P1HeuristicFunction.netBenefitsHeuristic(s));


        if (Global.hillClimbing) {
            Problem p = new Problem(s,
                    new P1SuccessorFunction(),
                    new P1GoalTest(),
                    new P1HeuristicFunction());

            Search alg = new HillClimbingSearch();

            SearchAgent agent = new SearchAgent(p, alg);

            printActions(agent.getActions());
            printInstrumentation(agent.getInstrumentation());
            Object o = alg.getGoalState();
            System.out.println("Benefici total: " + P1HeuristicFunction.netBenefitsHeuristic(o));
        }
        else {
            Problem p = new Problem(s,
                    new P1SuccessorFunctionSA(),
                    new P1GoalTest(),
                    new P1HeuristicFunction());

            Search alg = new SimulatedAnnealingSearch(2000, 100, 5, 0.001D);

            SearchAgent agent = new SearchAgent(p, alg);

            Object o = alg.getGoalState();
            printInstrumentation(agent.getInstrumentation());
            System.out.println("Benefici total: " + P1HeuristicFunction.netBenefitsHeuristic(o));
        }
    }

    private static void printActions(List actions) {
        for (int i = 0; i < actions.size(); i++) {
            String action = (String) actions.get(i);
            System.out.println(action);
        }
    }

    private static void printInstrumentation(Properties properties) {
        Iterator keys = properties.keySet().iterator();

        while(keys.hasNext()) {
            String key = (String)keys.next();
            String property = properties.getProperty(key);
            System.out.println(key + " : " + property);
        }

    }
}
