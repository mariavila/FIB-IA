package iapractica1;

import IA.Desastres.*;
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
    
    private ArrayList<Centro> centros;
    private ArrayList<Grupo> grupos;
    private ArrayList<ArrayList<Trayecto>> rescates;
    // Si Centro 1 tiene 4 helicopteros, son los [0,1,2,3,4]
    //  Si Centro 2 tiene 3 helicopteros, son los [5,6,7] ....
    
    /* Constructoras */
    public IAPractica1Board(int initialState, int nHelicopteros, ArrayList<Centro> cs, ArrayList<Grupo> gs) {
        rescates = new ArrayList<>(nHelicopteros);
        centros = cs;
        grupos = gs;
        
        // Estado inicial
        /*  INITIAL STATE:
    
        1 ->    Heli 1 recoge grupo 1 y vuelve
                Heli 2 recoge grupo 2 y vuelve, etc.
        
        2->
        
        */
        
        switch (initialState) {
            case 1:
                int centro = 0, helis = 0;
                for (int i = 0; i < grupos.size(); i++) {
                    int heli = i%nHelicopteros;
                    int hCentro = centros.get(centro).getNHelicopteros();

                    if ((heli - helis) > hCentro) { // Ver si el siguiente heli está en el mismo centro
                        centro++;
                        helis += hCentro;
                        if (centro > centros.size()) {
                            centro = 0;
                            helis = 0;
                        }
                    }

                    Trayecto t = new Trayecto(centros.get(centro));
                    t.añadeGrupo(grupos.get(i));
                    rescates.get(i%nHelicopteros).add(t);
                }
                
                break;
                
            case 2:
                
                break;
                
            case 3:
                
                break;
        }
        
        
        /*Grupo añadir = grupos.get(i);
            if (rescates.get(i%nHelicopteros).get(rescate).cabeGrupo(añadir))*/

    }
    
    
    
    public IAPractica1Board(ArrayList<ArrayList<Trayecto>> h, ArrayList<Centro> cs, ArrayList<Grupo> gs) {
        rescates = h;
        centros = cs;
        grupos = gs;
    }

    /* Operadores */
    public void flip_it(int i){
        //move
        if (i >= board.length || i+1 >= board.length) return;
        
        if (board[i] == 1) board[i] = 0;
        else if (board[i] == 0) board[i] = 1;
        
        if (board[i+1] == 1) board[i+1] = 0;
        else if (board[i+1] == 0) board[i+1] = 1;
    }
    
    public void swap(Grupo g1, int heli1, int trayecto1, Grupo g2, int heli2, int trayecto2){
        // Eliminamos el grupo de los trayectos 
        rescates.get(heli1).get(trayecto1).eliminaGrupo(g1);
        rescates.get(heli2).get(trayecto2).eliminaGrupo(g2);
        
        // Añadimos los grupos de nuevo
        rescates.get(heli1).get(trayecto1).añadeGrupo(g2);
        rescates.get(heli2).get(trayecto2).añadeGrupo(g1);
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
         IAPractica1Board clone = new IAPractica1Board(rescates,centros,grupos);
         return clone;
     }
     
     public int getLength(){
         return board.length;
     }
     // Some functions will be needed for creating a copy of the state

    /* ^^^^^ TO COMPLETE ^^^^^ */

}
