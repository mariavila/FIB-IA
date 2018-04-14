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
        int ncentros = 1;
        int ngrupos = 100;
        int nhelicopteros = 30; // Numero de helicopteros en cada centro ¿? DUDA DOC.
        int initialState = 1;
        int experiment = 1; // Heurístico tiempo total(1) o minimizando grupos prioridad 1 (2)
        
        /*  SEEDS ALEATORIAS 
        int min = 0, max = 1000, rango = max - min +1;
        Random rand = new Random();
        int seedCentros = rand.nextInt(rango) + min;
        int seedGrupos = rand.nextInt(rango) + min;
       */
        long Tiempo_total = (long) 0.0;
        double tiempo_sol = 0.0;
        for(int i = 0; i<10; ++i){
            int seedCentros = (i+1)*100;
            int seedGrupos = (i+1)*100;
            Centros cs = new Centros(ncentros, nhelicopteros, seedCentros);
            Grupos gs = new Grupos(ngrupos,seedGrupos);
          
            IAPractica1Board board = new IAPractica1Board(initialState, nhelicopteros*ncentros, cs, gs, experiment);
            
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
            long timeIni = java.lang.System.currentTimeMillis();
            SearchAgent agent = new SearchAgent(p, alg);
            long timeFi = java.lang.System.currentTimeMillis();
            Tiempo_total += timeFi - timeIni;
            
            // We print the results of the search
            //System.out.println("---------------------- ESTADO FINAL ---------------");
            IAPractica1Board estadoFinal = (IAPractica1Board)alg.getGoalState();
            tiempo_sol += estadoFinal.return_tiempo1();
            //estadoFinal.printEstado();
            //System.out.println();
            //printActions(agent.getActions());
            //printInstrumentation(agent.getInstrumentation());

            // You can access also to the goal state using the
            // method getGoalState of class Search
            //IAPractica1Board b = (IAPractica1Board) alg.getGoalState();
            //b.printEstado();
            System.out.println(i+1);
        }
        System.out.println("Total time: "+ (Tiempo_total)/10 + "ms");
        System.out.println("Tiempo de solucion: " + tiempo_sol/10 + "min");
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