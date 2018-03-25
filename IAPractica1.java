import IA.Desastres.Centros;
import IA.Desastres.Grupos;



import aima.search.framework.GraphSearch;
import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;
import iapractica1.IAPractica1Board;
import iapractica1.IAPractica1GoalTest;
import iapractica1.IAPractica1HeuristicFunction;
import iapractica1.IAPractica1SuccesorFunction;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

public class IAPractica1 {   
    public static void main(String[] args) throws Exception{
        
        int ncentros = 10;
        int ngrupos = 20;
        int nhelicopteros = 10;
        int seed = 5; // Aleatorizar
        Centros cs = new Centros(ncentros, nhelicopteros, seed);
        Grupos gs = new Grupos(ngrupos,seed);
          
        IAPractica1Board board = new IAPractica1Board(prob, sol );

        // Create the Problem object
        Problem p = new  Problem(board,
                                new IAPractica1SuccesorFunction(),
                                new IAPractica1GoalTest(),
                                new IAPractica1HeuristicFunction());

        // Instantiate the search algorithm
	// HillClimbingSearch() or SimulatedAnnealing(int steps, int stiter, int k, double lamb)
        //Search alg = new AStarSearch(new GraphSearch());
        Search alg = new HillClimbingSearch();

        // Instantiate the SearchAgent object
        SearchAgent agent = new SearchAgent(p, alg);

	// We print the results of the search
        System.out.println();
        printActions(agent.getActions());
        printInstrumentation(agent.getInstrumentation());

        // You can access also to the goal state using the
	// method getGoalState of class Search

    }

        private static void printInstrumentation(Properties properties) {
        Iterator keys = properties.keySet().iterator();
        while (keys.hasNext()) {
            String key = (String) keys.next();
            String property = properties.getProperty(key);
            System.out.println(key + " : " + property);
        }
        
    }
    
    private static void printActions(List actions) {
        for (int i = 0; i < actions.size(); i++) {
            String action = (String) actions.get(i);
            System.out.println(action);
        }
    }
    
}