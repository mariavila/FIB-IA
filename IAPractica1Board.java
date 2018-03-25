package iapractica1;

import IA.Desastres.Grupo;
import java.util.ArrayList;

/**
 * Created by bejar on 17/01/17.
 */
public class IAPractica1Board {
    /* Class independent from AIMA classes
       - It has to implement the state of the problem and its operators
     *

    /* State data structure
        array for each helicopter which groups rescue
     */
    
    private ArrayList<Grupo> grupos;
    private ArrayList<ArrayList<Trayecto>> rescates;
    
    /* Constructor */
    public IAPractica1Board(int nHelicopteros, ArrayList<Grupo> gs) {
        rescates = new ArrayList<>(nHelicopteros);       
        grupos = gs;
        
        // Estado inicial
        for (int i = 0; i < grupos.size(); i++) {
            rescates.get(i%nHelicopteros).add(grupos.get(i)); // Solución 1: Heli 1 recoge grupo 1 y vuelve
                                                // Heli 2 recoge grupo 2 y vuelve, etc.
        }
        
        

    }

    /* Operadores */
    public void flip_it(int i){
        // flip the coins i and i + 1
        if (i >= board.length || i+1 >= board.length) return;
        
        if (board[i] == 1) board[i] = 0;
        else if (board[i] == 0) board[i] = 1;
        
        if (board[i+1] == 1) board[i+1] = 0;
        else if (board[i+1] == 0) board[i+1] = 1;
    }
    
    public void swap(Grupo g1, int heli1, Grupo g2, int heli2){
        // borramos el ultimo 
        rescates.get(heli1).remove(rescates.get(heli1).size()-1);
        
        // borramos el ultimo
        rescates.get(heli2).remove(rescates.get(heli2).size()-1);
        
        // reasignamos
        rescates.get(heli1).add(g2);
        rescates.get(heli2).add(g1);
    }

    /* Heuristic function */
    public double heuristic(){
        // compute the number of coins out of place respect to solution
        int cost = 0;
        for (int i = 0; i < board.length; ++i){
            if (board[i] != solution[i]) ++cost;
        }
        return cost;
    }

     /* Goal test */
     public boolean is_goal(){
         // compute if board = solution
        for (int i = 0; i < board.length; ++i){
            if (board[i] != solution[i]) return false;
        }
        return true;
     }

     /* auxiliary functions */
     public IAPractica1Board clone(){
         IAPractica1Board clone = new IAPractica1Board(board,solution);
         return clone;
     }
     
     public int getLength(){
         return board.length;
     }
     // Some functions will be needed for creating a copy of the state

    /* ^^^^^ TO COMPLETE ^^^^^ */

}
