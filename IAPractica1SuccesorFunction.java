package iapractica1;

import aima.search.framework.SuccessorFunction;
import aima.search.framework.Successor;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by bejar on 17/01/17
 */
public class IAPractica1SuccesorFunction implements SuccessorFunction{

    public List getSuccessors(Object state){
        ArrayList retval = new ArrayList();
        IAPractica1Board board = (IAPractica1Board) state;
        
        // Some code here
        // (flip all the consecutive pairs of coins and generate new states
        // Add the states to retval as Succesor("flip i j", new_state)
        // new_state has to be a copy of state
        for (int i = 0; i+1 < board.getLength(); ++i){
            IAPractica1Board b = board.clone();
            b.flip_it(i);
            
            Successor succ = new Successor("flip " + i + " " + (i+1), b);
            retval.add(succ);
        }
        
        
        return retval;

    }

}
