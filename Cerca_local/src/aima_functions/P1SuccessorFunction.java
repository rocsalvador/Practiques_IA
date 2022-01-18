package aima_functions;

import IA.Gasolina.Gasolinera;
import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

import java.util.ArrayList;
import java.util.List;

import states.*;
import main.Global;

public class P1SuccessorFunction implements SuccessorFunction {

    @Override
    public List getSuccessors(Object o) {
        ArrayList retval = new ArrayList();

        State s = (State) o;
        retval.addAll(successorsAfegirDesti(s));
        retval.addAll(successorsSwapDestins(s));
        retval.addAll(successorsSwapFantasma(s));

        return retval;
    }

    private ArrayList successorsAfegirDesti(State s) {
        ArrayList retval = new ArrayList();
        Camio fantasma = s.getFantasma();

        for (int i = 0; i < s.getNumCamions(); ++i) {
            Camio camio = s.getCamioIesim(i);

            if (camio.getDiposit() == 0) {
                State nouS = s.addDestiCentreDistribucio(i);
                Camio nouC = nouS.getCamioIesim(i);

                if (nouC.getKm() <= Global.kmMax && nouC.getViatges() < Global.viatgesMax) {
                    String action = "Added desti CD to camio " + i;
                    retval.add(new Successor(action, nouS));
                }
            }
            else {
                for (int k = 0; k < fantasma.numDestins(); ++k) {
                    State nouS = s.addDestiGasolinera(i, k);
                    Camio nouC = nouS.getCamioIesim(i);
                    int newPos = fantasma.getDestiIesim(k);

                    if (nouC.getKm() <= Global.kmMax && nouC.getViatges() < Global.viatgesMax) {
                        String action = "Added desti gasolinera " + newPos + " to camio " + i;
                        retval.add(new Successor(action, nouS));
                    }
                }
            }
        }
        return retval;
    }

    private ArrayList successorsSwapDestins(State s) {
        ArrayList retval = new ArrayList();
        Camio fantasma = s.getFantasma();

        for (int i = 0; i < s.getNumCamions(); ++i) {
            Camio camioi = s.getCamioIesim(i);
            for (int j = i; j < s.getNumCamions(); ++j) {
                Camio camioj = s.getCamioIesim(j);

                for (int dest_i = 0; dest_i < camioi.numDestins(); ++dest_i) {
                    for (int dest_j = 0; dest_j < camioj.numDestins(); ++dest_j) {
                        State nouS = s.swapDestins(i, dest_i, j, dest_j);
                        int pos_i = camioi.getDestiIesim(dest_i);
                        int pos_j = camioj.getDestiIesim(dest_j);
                        Camio nouc_i = nouS.getCamioIesim(i);
                        Camio nouc_j = nouS.getCamioIesim(j);

                        if (pos_i != camioi.getCD() && pos_j != camioj.getCD() &&
                                nouc_i.getKm() <= Global.kmMax && nouc_j.getKm() <= Global.kmMax) {
                            String action = "Swapped camio " + i + " dest " + pos_i + " with "
                                    + j + " dest " + pos_j;
                            retval.add(new Successor(action, nouS));
                        }
                    }
                }
            }
        }
        return retval;
    }

    private ArrayList successorsSwapFantasma(State s) {
        ArrayList retval = new ArrayList();
        Camio fantasma = s.getFantasma();

        for (int i = 0; i < s.getNumCamions(); ++i) {
            Camio camioi = s.getCamioIesim(i);

            for (int dest_i = 0; dest_i < camioi.numDestins(); ++dest_i) {
                for (int dest_j = 0; dest_j < fantasma.numDestins(); ++dest_j) {
                    State nouS = s.swapDestinsFantasma(i, dest_i, dest_j);
                    int pos_i = camioi.getDestiIesim(dest_i);
                    int pos_j = fantasma.getDestiIesim(dest_j);

                    if (pos_i != camioi.getCD() && nouS.getCamioIesim(i).getKm() <= Global.kmMax) {
                        String action = "Swapped camio " + i + " dest " + pos_i +
                                " with camio fantasma dest " + pos_j;
                        retval.add(new Successor(action, nouS));
                    }
                }
            }
        }
        return retval;
    }

}
