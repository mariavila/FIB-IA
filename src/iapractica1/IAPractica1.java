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
    public ArrayList<String> main2(String algoritmo,
                        int ncentros, int ngrupos, int nhelicopteros,
                        int initialState, int heuristic,
                        int steps, int stiter, int k, double lamb) throws Exception{
        Search alg;
            if (algoritmo.trim().toLowerCase().contains("HillClimbing")) alg = new HillClimbingSearch();
            else alg = new SimulatedAnnealingSearch(steps, stiter, k, lamb); //<-- No funciona con el printActions
        
        //  SEEDS ALEATORIAS 
        int min = 0, max = 1000, rango = max - min +1;
        Random rand = new Random();
        int seedCentros = rand.nextInt(rango) + min;
        int seedGrupos = rand.nextInt(rango) + min;
        
        //int seedCentros = 900, seedGrupos = seedCentros;
        
        Centros cs = new Centros(ncentros, nhelicopteros, seedCentros);
        Grupos gs = new Grupos(ngrupos,seedGrupos);
          
        IAPractica1Board board = new IAPractica1Board(initialState, nhelicopteros*ncentros, cs, gs, heuristic);
        
        ArrayList<String> strings = new ArrayList<>();
        //Print the initial state
        //System.out.println("---------------------- ESTADO INICIAL ---------------");
        strings.add(board.printEstadoString());
        //System.out.println();
        
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
        Problem p ;
        if (alg.toString().contains("HillClimbing"))
            p = new  Problem(board,
                             new IAPractica1SuccesorFunction(),
                             new IAPractica1GoalTest(),
                             new IAPractica1HeuristicFunction());
        
        else //if (alg.toString().contains("SimulatedAnnealing"))    
            p = new  Problem(board,
                             new IAPractica1SASuccesorFunction(),
                             new IAPractica1GoalTest(),
                             new IAPractica1HeuristicFunction()); 
        
        // Instantiate the SearchAgent object
        long timeIni = java.lang.System.currentTimeMillis();
        SearchAgent agent = new SearchAgent(p, alg);
        long timeFi = java.lang.System.currentTimeMillis();
	// We print the results of the search     
        //System.out.println("---------------------- ESTADO FINAL ---------------");
        IAPractica1Board estadoFinal = (IAPractica1Board)alg.getGoalState();
        strings.add(estadoFinal.printEstadoString());
        //System.out.println();
        
        strings.add((timeFi-timeIni) + "ms");
        return strings;
    }
    public void main(String[] args) throws Exception {
        int ncentros = 5;
        int ngrupos = 100;
        int nhelicopteros = 1; // Numero de helicopteros en cada centro ¿? DUDA DOC.
        int initialState = 3;
        int heuristic = 1; // Heurístico tiempo total(1) o minimizando grupos prioridad 1 (2)
        
        // Algoritmo: HC o SA
        int steps = 300000;
        int stiter = 5000;
        int k = 5; 
        double lamb = 0.01;
        //Search alg = new HillClimbingSearch();
        Search alg = new SimulatedAnnealingSearch(steps, stiter, k, lamb); //<-- No funciona con el printActions
        
        //  SEEDS ALEATORIAS 
        int min = 0, max = 1000, rango = max - min +1;
        Random rand = new Random();
        //int seedCentros = rand.nextInt(rango) + min;
        //int seedGrupos = rand.nextInt(rango) + min;
        
        int seedCentros = 900, seedGrupos = seedCentros;
        
        Centros cs = new Centros(ncentros, nhelicopteros, seedCentros);
        Grupos gs = new Grupos(ngrupos,seedGrupos);
          
        IAPractica1Board board = new IAPractica1Board(initialState, nhelicopteros*ncentros, cs, gs, heuristic);
        
        //Print the initial state
        System.out.println("---------------------- ESTADO INICIAL ---------------");
        board.printEstado();
        System.out.println();
        
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
        Problem p ;
        if (alg.toString().contains("HillClimbing"))
            p = new  Problem(board,
                             new IAPractica1SuccesorFunction(),
                             new IAPractica1GoalTest(),
                             new IAPractica1HeuristicFunction());
        
        else //if (alg.toString().contains("SimulatedAnnealing"))    
            p = new  Problem(board,
                             new IAPractica1SASuccesorFunction(),
                             new IAPractica1GoalTest(),
                             new IAPractica1HeuristicFunction()); 
        
        // Instantiate the SearchAgent object
        long timeIni = java.lang.System.currentTimeMillis();
        SearchAgent agent = new SearchAgent(p, alg);
        long timeFi = java.lang.System.currentTimeMillis();
	// We print the results of the search     
        System.out.println("---------------------- ESTADO FINAL ---------------");
        IAPractica1Board estadoFinal = (IAPractica1Board)alg.getGoalState();
        estadoFinal.printEstado();
        System.out.println();
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