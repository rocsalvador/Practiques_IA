package aima_functions;

import aima.search.framework.GoalTest;
import states.State;

public class P1GoalTest implements GoalTest {

    @Override
    public boolean isGoalState(Object state) {
        //sempre retorna fals (a búsqueda local desconeixem l'estat final)
        return false;
    }
    /*
    @Override
    public boolean isGoalState(Object o) {

        State board = (State) o;
        boolean is_solution = false;

        if (board.isNoServidesEmpty()) {    //Solució possible: no queden peticions no servides
            return true;
        } else {                            //Solució possible: sense gasolineres a l'abast dels camions
            return board.noProfitLeftToGain();
        }
    }
     */
}
