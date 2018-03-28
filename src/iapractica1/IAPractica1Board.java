package iapractica1;

import IA.Desastres.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

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
    
    /* Constructoras */

    public IAPractica1Board(int initialState, int nHelicopteros, ArrayList<Centro> cs, ArrayList<Grupo> gs) {
        rescates = new ArrayList<>(); for (int i = 0; i < nHelicopteros; ++i){ ArrayList<Trayecto> t = new ArrayList<>(); rescates.add(t);}
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

        
        // DEBUG
        int h = 0;
        for (ArrayList<Trayecto> a : rescates) {
            int t = 0;
            for (Trayecto tr : a) {
                System.out.print("Heli: " + h + " \t\tTray: " + t + "\t\tGrupos: " + tr.getNGrupos() + " -->");
                for (int i=0; i<tr.getNGrupos(); i++)
                    System.out.print(" (" + tr.getGrupo(i).getCoordX() + ", " + tr.getGrupo(i).getCoordY() + ")");
                
                System.out.println();
                t++;
            }
            h++;
        }
    }

    public IAPractica1Board(ArrayList<ArrayList<Trayecto>> h, ArrayList<Centro> cs, ArrayList<Grupo> gs) {
        rescates = h;
        centros = cs;
        grupos = gs;
    }

    /* Operadores */
    public void move(Grupo gCambio, int heliActual, int trayectoActual, int heliCambio, int trayectoCambio){
        // Eliminamos el grupo gCambio del trayectoActual
        /**Pre: 
         *  - gCambio existe en trayectoActual
         *  - trayectoActual pertenece a heliActual
         *  - trayectoCambio pertenece a heliCambio
         *  - hay espacio en trayecto cambio para g (hay como maximo dos grupos y 
         *        caben como minimo n personas mas en el helicoptero, donde n es el
         *        numero de personas de gCambio)
         */ 
        boolean eliminarGrupo = rescates.get(heliActual).get(trayectoActual).eliminaReordenaGrupo(gCambio);
        //Si en el trayecto no se recoge a ningun grupo lo eliminamos
        if(eliminarGrupo)
            rescates.get(heliActual).remove(trayectoActual);
        
        //Añadimos el grupo gCambio al trayectoCambio
        rescates.get(heliCambio).get(trayectoCambio).añadeGrupo(gCambio);
        if(rescates.get(heliCambio).size() == trayectoCambio){
            Trayecto t = new Trayecto(centros.get((int)heliCambio * centros.size() / rescates.size()));
            t.añadeGrupo(gCambio);
            rescates.get(heliCambio).add(t);
        }
    }
    
    public void swap(Grupo g1, int heli1, int trayecto1, Grupo g2, int heli2, int trayecto2){
        // Eliminamos el grupo de los trayectos 
        rescates.get(heli1).get(trayecto1).eliminaGrupo(g1);
        rescates.get(heli2).get(trayecto2).eliminaGrupo(g2);
        
        // Añadimos los grupos de nuevo
        rescates.get(heli1).get(trayecto1).añadeGrupo(g2);
        rescates.get(heli2).get(trayecto2).añadeGrupo(g1);
    }

    /*********************************************************************************************************/
    /** Función heurística
     * @return Tiempo total de la solución según el heurístico 1 o 2
     */
    public double heuristic(){
        // compute the number of coins out of place respect to solution
        byte experiment = 1; // experimento 1 o 2
        int inf = Integer.MAX_VALUE;
        if (!todosLosGruposRescatados()) return inf; //solución mala, no se recogen todos los grupos
        
        if (experiment == 1){ 
            return calculaTiempoTotal();
        }
        else{
            float k = 0.7f;
            float j = 1f - k;
            
            int tiempoTotal = calculaTiempoTotal();
            int tiempoGruposPrio1 = calculaTiempoHastaGrupoPrio1();
            
            return k * tiempoTotal + j * (tiempoTotal-tiempoGruposPrio1);
        }
    }
    /**
     * Función que calcula el tiempo total de rescatar a todos los grupos
     * @return Tiempo total en rescatar a todos los grupos
     */
    private int calculaTiempoTotal(){
        int tiempo = 0;
        for (int i = 0; i < rescates.size(); ++i){ // cada helicoptero tendra t trayectos
            ArrayList<Trayecto> trayectos = rescates.get(i);
            for (int t = 0; t < trayectos.size(); ++t){ // por cada trayecto del helicoptero
                tiempo += trayectos.get(t).getTiempo();
            }
            tiempo += 10 * (trayectos.size()-1); // +10 min por cada trayecto (el utlimo no cuenta)
        }
        return tiempo;
    }
    
    /**
     * Función que calcula el tiempo DESDE el final HASTA el primer grupo de prioridad 1
     * @return tiempo desde el final hasta el primer grupo de prioridad 1
     */
    private int calculaTiempoHastaGrupoPrio1(){
        int tiempoHastaElPrimero = 0;
        int n = getUltimoTrayecto();
        for (int t = n; t > 0; --t){
            for (int i = 0; i < rescates.size(); ++i){ // Miramos por todos los helicopteros
                if (rescates.get(i).size() == n){ 
                    // Hemos encontrado el helicopteros con más trayectos
                    Trayecto tray = rescates.get(i).get(n-1); //el último
                    // Miramos si tiene algun grupo de prioridad 1, si no seguimos buscando
                    for (int grupo = 1; grupo <= tray.getNGrupos(); ++grupo){
                        if (tray.getGrupo(i).getPrioridad() == 1) return tiempoHastaElPrimero;
                    }
                    tiempoHastaElPrimero += tray.getTiempo();
                }
            }
        }
        return tiempoHastaElPrimero;
    }
    /** 
     * Función que devuelve el máximo de trayectos de un helicóptero
     * @return max: tamaño del helicoptero con más trayectos
     */
    private int getUltimoTrayecto(){
        int max = 0;
        for (int i = 0; i < rescates.size(); ++i){
            if (rescates.get(i).size() > max)
                max = rescates.get(i).size();
        }
        return max;
    }
    
    /**
     * Función que mira si todos los grupos han estado rescatados 
     * @return True si todos los grupos han sido rescatados, False en caso contrario
     */
    private Boolean todosLosGruposRescatados(){
        Boolean temp = Boolean.FALSE;
        ArrayList<Boolean> visitats = new ArrayList<>(Collections.nCopies(grupos.size(), temp));
        Collections.fill(visitats, Boolean.FALSE);
        
        for (int i = 0; i < rescates.size(); ++i){
            for (int t = 0; t < rescates.get(i).size(); ++t){
                Trayecto tray = rescates.get(i).get(t);
                for (int grupo = 1; grupo <= tray.getNGrupos(); ++grupo){
                    Grupo grupoTrayecto = tray.getGrupo(grupo);
                    
                    for (int k = 0; k < grupos.size(); ++k){
                        if (grupoTrayecto.equals(grupos.get(k))){
                            visitats.set(k, Boolean.TRUE);
                            break;
                        }
                    }
                 
                }
            }
        }
        
        for (int i = 0; i < visitats.size(); ++i){
            if (!visitats.get(i)) return Boolean.FALSE;
        }
        return Boolean.TRUE;
    }
    
    /*****************************************************************************************/
     /* Goal test */
     public boolean is_goal(){
         return Boolean.FALSE; //No s'utilitza en cerca local
     }

     /* auxiliary functions */
     public IAPractica1Board clone(){
         IAPractica1Board clone = new IAPractica1Board(rescates,centros,grupos);
         return clone;
     }
     
     public int getNHeli(){
         return rescates.size();
     }
     
     public int getNTrayectorias(int heli){
         return rescates.get(heli).size();
     }
     
     public int getNgrupos(int heli, int tray){
         return rescates.get(heli).get(tray).getNGrupos();
     }
     
     public int getNpersonas(int heli, int tray, int grupo){
         return rescates.get(heli).get(tray).getNpersonas(grupo);
     }
     
     public Grupo getGrupo(int heli, int tray, int grupo){
         return rescates.get(heli).get(tray).getGrupo(grupo);
     }
}