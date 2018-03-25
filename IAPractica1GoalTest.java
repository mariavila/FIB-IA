package iapractica1;

import aima.search.framework.GoalTest;

/**
 * Created by bejar on 17/01/17.
 */
public class IAPractica1GoalTest implements GoalTest {

    public boolean isGoalState(Object state){

        return((IAPractica1Board) state).is_goal();
    }
}
