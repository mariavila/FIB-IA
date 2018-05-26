package iapractica1;
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
import iapractica1.IAPractica1SASuccesorFunction;
import iapractica1.IAPractica1SuccesorFunction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Random;

public class IAPractica1 {
    
    // Main adaptado a la parte Grafica
    public ArrayList<String> main2(String algoritmo,String seeds, int seedC, int seedG,
                        int ncentros, int ngrupos, int nhelicopteros,
                        int initialState, int heuristic,
                        int steps, int stiter, int k, double lamb) throws Exception{
        Search alg;
            if (algoritmo.equals("HillClimbing")) alg = new HillClimbingSearch();
            else alg = new SimulatedAnnealingSearch(steps, stiter, k, lamb); //<-- No funciona con el printActions
        
        //  SEEDS ALEATORIAS O ESPECIFICA
        int seedCentros;
        int seedGrupos;
        if (seeds.equals("Aleatorias")){
            int min = 0, max = 10000, rango = max - min +1;
            Random rand = new Random();
            seedCentros = rand.nextInt(rango) + min;
            seedGrupos = rand.nextInt(rango) + min;
        }
        
        else{ seedCentros = seedC; seedGrupos = seedG;}
        
        Centros cs = new Centros(ncentros, nhelicopteros, seedCentros);
        Grupos gs = new Grupos(ngrupos,seedGrupos);
          
        IAPractica1Board board = new IAPractica1Board(initialState, nhelicopteros*ncentros, cs, gs, heuristic);
        
        ArrayList<String> strings = new ArrayList<>();
        //Print the initial state
        strings.add(board.printEstadoString());

        // Create the Problem object
        Problem p ;
        if (alg.toString().contains("HillClimbing"))
            p = new  Problem(board,
                             new IAPractica1SuccesorFunction(),
                             new IAPractica1GoalTest(),
                             new IAPractica1HeuristicFunction());
        
        else
            p = new  Problem(board,
                             new IAPractica1SASuccesorFunction(),
                             new IAPractica1GoalTest(),
                             new IAPractica1HeuristicFunction()); 
        
        // Instantiate the SearchAgent object
        long timeIni = java.lang.System.currentTimeMillis();
        SearchAgent agent = new SearchAgent(p, alg);
        long timeFi = java.lang.System.currentTimeMillis();
	// We print the results of the search     
        IAPractica1Board estadoFinal = (IAPractica1Board)alg.getGoalState();
        strings.add(estadoFinal.printEstadoString());
        
        strings.add((timeFi-timeIni) + "ms");
        return strings;
    }
    
    // Main para EJECUTAR POR CÓDIGO (pasar funcion a static)
    public void main(String[] args) throws Exception {
        // DETERMINAMOS LOS PARÁMETROS DE ENTRADA
        int ncentros = 5;
        int ngrupos = 100;
        int nhelicopteros = 1; // Numero de helicopteros en cada centro
        int initialState = 1;
        int heuristic = 2; // Heurístico tiempo total(1) o minimizando grupos prioridad 1 (2)
        
        // Parámetros Simulated Annealing
        int steps = 300000;
        int stiter = 5000;
        int k = 5; 
        double lamb = 0.01;
        
        // ALGORITMO: HC o SA
        Search alg = new HillClimbingSearch();
        //Search alg = new SimulatedAnnealingSearch(steps, stiter, k, lamb); //<-- No funciona con el printActions
        
        
        //  SEEDS ALEATORIAS 
        /*
        int min = 0, max = 1000, rango = max - min +1;
        Random rand = new Random();
        int seedCentros = rand.nextInt(rango) + min;
        int seedGrupos = rand.nextInt(rango) + min;
        */
        // SEEDS CONCRETAS
        int seedCentros,seedGrupos;
        seedCentros = seedGrupos = 500;
        
        // DETERMINAMOS EL PROBLEMA
        Centros cs = new Centros(ncentros, nhelicopteros, seedCentros);
        Grupos gs = new Grupos(ngrupos,seedGrupos);
        
        IAPractica1Board board = new IAPractica1Board(initialState, nhelicopteros*ncentros, cs, gs, heuristic);
        
        //Print Initial State
        System.out.println("---------------------- ESTADO INICIAL ---------------");
        board.printEstado();
        System.out.println();

        // Create the Problem object
        Problem p ;
        if (alg.toString().contains("HillClimbing"))
            p = new  Problem(board,
                             new IAPractica1SuccesorFunction(),
                             new IAPractica1GoalTest(),
                             new IAPractica1HeuristicFunction());
        
        else
            p = new  Problem(board,
                             new IAPractica1SASuccesorFunction(),
                             new IAPractica1GoalTest(),
                             new IAPractica1HeuristicFunction()); 
        
        // Instantiate the SearchAgent object
        long timeIni = java.lang.System.currentTimeMillis();
        SearchAgent agent = new SearchAgent(p, alg);
        long timeFi = java.lang.System.currentTimeMillis();
        
        
	// PRINT DE LOS RESULTADOS
        System.out.println("---------------------- ESTADO FINAL ---------------");
        IAPractica1Board estadoFinal = (IAPractica1Board)alg.getGoalState();
        estadoFinal.printEstado();
        System.out.println();
        
        // Para ver los PASOS del algoritmo (Hill Climbing):
        //printActions(agent.getActions());
        //printInstrumentation(agent.getInstrumentation());


        System.out.println("Total time: "+ (timeFi-timeIni) + "ms");
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
