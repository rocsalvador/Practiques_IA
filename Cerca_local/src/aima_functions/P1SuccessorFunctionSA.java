package aima_functions;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

import states.*;
import main.Global;

public class P1SuccessorFunctionSA implements SuccessorFunction {

    @Override
    public List getSuccessors(Object o) {
        ArrayList retval = new ArrayList();

        State s = (State) o;

        retval.add(randomSuccessor(s));

        return retval;
    }

    private Successor randomSuccessor(State s) {
        Successor nextSucc = null;

        while (nextSucc == null) {
            int outcome = randomNumber(3);

            switch (outcome) {
                case 0:
                    nextSucc = randomSuccessorAfegirDesti(s);
                    break;
                case 1:
                    nextSucc = randomSuccessorSwapDestins(s);
                    break;
                default:
                    nextSucc = randomSuccessorSwapFantasma(s);
                    break;
            }
        }
        return nextSucc;
    }

    private Successor randomSuccessorAfegirDesti(State s) {
        //Agafar camió aleatori a
        if (s.getNumCamions() > 0) {
            int a = randomNumber(s.getNumCamions());
            Camio acam = s.getCamioIesim(a);

            if (acam.getDiposit() == 0) {
                State nouS = s.addDestiCentreDistribucio(a);
                Camio nouC = nouS.getCamioIesim(a);

                if (nouC.getKm() <= Global.kmMax && nouC.getViatges() < Global.viatgesMax) {
                    String action = "Added desti CD to camio " + a;
                    return new Successor(action, nouS);
                }
            } else {
                //Agafar camió fantasma
                Camio fantasma = s.getFantasma();
                if (fantasma.teDestins()) {
                    int dest_f = randomNumber(fantasma.numDestins());
                    State nouS = s.addDestiGasolinera(a, dest_f);
                    Camio nouC = nouS.getCamioIesim(a);
                    int newPos = fantasma.getDestiIesim(dest_f);

                    if (nouC.getKm() <= Global.kmMax && nouC.getViatges() < 5) {
                        String action = "Added desti gasolinera " + newPos + " to camio " + a;
                        return new Successor(action, nouS);
                    }
                }
            }
        }
        return null;
    }

    private Successor randomSuccessorSwapDestins(State s) {
        //Agafar camió aleatori a
        if (s.getNumCamions() > 0) {
            int a = randomNumber(s.getNumCamions());
            Camio acam = s.getCamioIesim(a);
            if (acam.teDestins()) {
                int dest_a = randomNumber(acam.numDestins());

                //Agafar camió aleatori b diferent de a
                if (s.getNumCamions() > 1) {
                    int b = a;
                    while (a == b) b = randomNumber(s.getNumCamions());
                    Camio bcam = s.getCamioIesim(b);
                    if (bcam.teDestins()) {
                        int dest_b = randomNumber(bcam.numDestins());

                        State nouS = s.swapDestins(a, dest_a, b, dest_b);
                        int pos_a = acam.getDestiIesim(dest_a);
                        int pos_b = bcam.getDestiIesim(dest_b);
                        Camio nouc_a = nouS.getCamioIesim(a);
                        Camio nouc_b = nouS.getCamioIesim(b);

                        if (pos_a != acam.getCD() && pos_b != bcam.getCD() &&
                                nouc_a.getKm() <= Global.kmMax && nouc_b.getKm() <= Global.kmMax) {
                            String action = "Swapped camio " + a + " dest " + pos_a + " with "
                                    + b + " dest " + pos_b;
                            return new Successor(action, nouS);
                        }
                    }
                }
            }
        }
        return null;
    }

    private Successor randomSuccessorSwapFantasma(State s) {
        //Agafar camió aleatori a
        if (s.getNumCamions() > 0) {
            int a = randomNumber(s.getNumCamions());
            Camio acam = s.getCamioIesim(a);
            if (acam.teDestins()) {
                int dest_a = randomNumber(acam.numDestins());
                //Agafar camió fantasma
                Camio fantasma = s.getFantasma();
                if (fantasma.teDestins()) {
                    int dest_f = randomNumber(fantasma.numDestins());

                    State nouS = s.swapDestinsFantasma(a, dest_a, dest_f);
                    int pos_a = acam.getDestiIesim(dest_a);
                    int pos_f = fantasma.getDestiIesim(dest_f);

                    if (pos_a != acam.getCD() && nouS.getCamioIesim(a).getKm() <= Global.kmMax) {
                        String action = "Swapped camio " + a + " dest " + pos_a +
                                " with camio fantasma dest " + pos_f;
                        return new Successor(action, nouS);
                    }
                }
            }
        }
        return null;
    }

    private int randomNumber(int max) {
        return new Random().nextInt(max);
    }
}


