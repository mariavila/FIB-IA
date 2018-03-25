package iapractica1;

/**
 * Created by bejar on 17/01/17.
 */

import aima.search.framework.HeuristicFunction;

public class IAPractica1HeuristicFunction implements HeuristicFunction {

    public double getHeuristicValue(Object n){

        return ((IAPractica1Board) n).heuristic();
    }
}
