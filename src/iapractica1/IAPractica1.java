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
import java.util.Random;

public class IAPractica1 {   
    public static void main(String[] args) throws Exception {
        
        int ncentros = 5;
        int ngrupos = 100;
        int nhelicopteros = 2; // Numero de helicopteros en cada centro ¿? DUDA DOC.
        int initialState = 1;
        int experiment = 1; // Heurístico tiempo total(1) o minimizando grupos prioridad 1 (2)
        
        /*  SEEDS ALEATORIAS
        int min = 0, max = 255, rango = max - min +1;
        Random rand;
        int seedCentros = rand.nextInt(rango) + min;
        int seedGrupos = rand.nextInt(rango) + min;
        */
        int seedCentros = 1234, seedGrupos = 1234;
        
        Centros cs = new Centros(ncentros, nhelicopteros, seedCentros);
        Grupos gs = new Grupos(ngrupos,seedGrupos);
          
        IAPractica1Board board = new IAPractica1Board(initialState, nhelicopteros*ncentros, cs, gs, experiment);
        
        
        // TEST CLONE 
        /*
        System.out.println("\n\nORIGINAL ANTES DEL SWAP:");
        board.printEstado();
        
        IAPractica1Board temp = board.clone();
        temp.swap(temp.getGrupo(0,0,0), 0, 0, temp.getGrupo(1,0,0), 1, 0);
        
        System.out.println("\n\nORIGINAL DESPUES DEL SWAP:");
        board.printEstado();
        
        System.out.println("\n\nAHORA VIENE EL CLON:");
        temp.printEstado();
        */

        // Create the Problem object
        Problem p = new  Problem(board,
                                new IAPractica1SuccesorFunction(),
                                new IAPractica1GoalTest(),
                                new IAPractica1HeuristicFunction());

        // Instantiate the search algorithm
	// HillClimbingSearch() or SimulatedAnnealing(int steps, int stiter, int k, double lamb)        
        int steps = 800;
        int stiter = 100;
        int k = 3; 
        double lamb = 3.5;
        Search alg = new HillClimbingSearch();
        //Search alg = new SimulatedAnnealingSearch(steps, stiter, k, lamb); //<-- No funciona con el printActions
        
        // Instantiate the SearchAgent object
        SearchAgent agent = new SearchAgent(p, alg);

	// We print the results of the search
        System.out.println("---------------------- ESTADO FINAL ---------------");
        IAPractica1Board estadoFinal = (IAPractica1Board)alg.getGoalState();
        estadoFinal.printEstado();
        System.out.println();
        printActions(agent.getActions());
        printInstrumentation(agent.getInstrumentation());

        // You can access also to the goal state using the
	// method getGoalState of class Search
        IAPractica1Board b = (IAPractica1Board) alg.getGoalState();
        b.printEstado();
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