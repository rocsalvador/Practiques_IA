package aima_functions;

import aima.search.framework.HeuristicFunction;
import states.*;
import main.*;
import java.util.ArrayList;
import java.lang.Math;

public class P1HeuristicFunction implements HeuristicFunction {
    @Override
    public double getHeuristicValue(Object o) {
        double h;
        switch (Global.heuristic) {
            case 1:
                h = netBenefitsHeuristic(o);
                break;
            case 2:
                h = quocientBenefitHeuristic(o);
                break;
            case 3:
                h = beneficisNetsAmbDiposits(o);
                break;
            case 4:
                h = netBenefitsBonusCDHeuristic(o);
                break;
            default:
                h = 0;
        }
        // System.out.println(h);
        return -h;
    }

    public static double netBenefitsHeuristic(Object o) {
        State s = (State) o;
        double h = 0;
        for (Camio c : s.getCamions()) {
            ArrayList<Integer> trajecte = c.getTrajecte();
            ArrayList<Integer> dies = c.getDiesPeticions();
            for (int i = 0; i < trajecte.size(); ++i) {
                if (i != trajecte.size()-1)
                    h -= State.getDistancia(trajecte.get(i), trajecte.get(i+1)) * Global.costKm;
                if (trajecte.get(i) != c.getCD()) {
                    if (dies.get(i) == 0) h += Global.preuDiposit * 1.02;
                    else h += Global.preuDiposit * ((100 - Math.pow(2, dies.get(i))) / 100);
                }
            }
        }
        return h;
    }

    public static double quocientBenefitHeuristic(Object o) {
        State s = (State) o;
        double beneficisServides = 0;
        double beneficisTotals = 0;
        for (Camio c : s.getCamions()) {
            ArrayList<Integer> trajecte = c.getTrajecte();
            ArrayList<Integer> dies = c.getDiesPeticions();
            for (int i = 0; i < trajecte.size(); ++i) {
                if (trajecte.get(i) != c.getCD()) {
                    if (dies.get(i) == 0) beneficisServides += Global.preuDiposit*1.02;
                    else beneficisServides += Global.preuDiposit * ((100 - Math.pow(2, dies.get(i))) / 100);
                }
            }
        }

        Camio fantasma = s.getFantasma();
        for (int dies : fantasma.getDiesPeticions()) {
            if (dies == 0) beneficisTotals += Global.preuDiposit * 1.02;
            else beneficisTotals += Global.preuDiposit * ((100 - Math.pow(2, dies)) / 100);
        }
        beneficisTotals += beneficisServides;
        return beneficisServides / beneficisTotals;
    }

    public static double beneficisNetsAmbDiposits(Object o) {
        State s = (State) o;
        double h = netBenefitsHeuristic(o);

        int nDestins = s.getFantasma().numDestins();
        int nDiposits = 0;
        for (Camio c : s.getCamions()) {
            nDiposits += c.getDiposit();
        }

        double alpha = 1/2D;

        h += alpha* Global.preuDiposit  * Math.min(nDestins, nDiposits);
        return h;
    }

    public static double netBenefitsBonusCDHeuristic(Object o) {
        State s = (State) o;
        double h = 0;
        for (Camio c : s.getCamions()) {
            ArrayList<Integer> trajecte = c.getTrajecte();
            ArrayList<Integer> dies = c.getDiesPeticions();
            for (int i = 0; i < trajecte.size(); ++i) {
                if (i != trajecte.size()-1)
                    h -= State.getDistancia(trajecte.get(i), trajecte.get(i+1)) * Global.costKm;
                if (trajecte.get(i) != c.getCD()) {
                    if (dies.get(i) == 0) h += Global.preuDiposit * 1.02;
                    else h += Global.preuDiposit * ((100 - Math.pow(2, dies.get(i))) / 100);
                }
            }
            if (trajecte.size() > 0 && trajecte.get(trajecte.size() - 1) == c.getCD()) {
                h += Global.preuDiposit/2;
            }
        }
        return h;
    }
}
