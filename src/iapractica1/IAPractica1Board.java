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
        
        printEstado();
    }

    private IAPractica1Board(ArrayList<ArrayList<Trayecto>> h, ArrayList<Centro> cs, ArrayList<Grupo> gs) {
        // Como centros y grupos no van a cambiar, todas las copias pueden apuntar al original
        centros = cs;
        grupos = gs;
        
        // Rescates sí que se modifica, por lo tanto hay que hacer que apunte a una nueva copia en memoria
        rescates = new ArrayList<>();
        for (int i=0; i<h.size(); i++) {
            ArrayList<Trayecto> trays = h.get(i);
            ArrayList<Trayecto> temp = new ArrayList<>();
            for (Trayecto t : trays) {
                Trayecto tclone = t.clone();
                temp.add(tclone);
            }
            rescates.add(temp);
        }
        
        /*  Si quisieramos que fueran nuevas copias en memoria (no eficiente por espacio)
        centros = new ArrayList<>();
        for (Centro c : cs) {
            centros.add(c);
        }
        
        grupos = new ArrayList<>();
        for (Grupo g : gs) {
            grupos.add(g);
        }
        */
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
        if(rescates.get(heliCambio).size() == trayectoCambio){
            Trayecto t = new Trayecto(centros.get((int)heliCambio * centros.size() / rescates.size()));
            t.añadeGrupo(gCambio);
            rescates.get(heliCambio).add(t);
        }
        else{
            rescates.get(heliCambio).get(trayectoCambio).añadeGrupo(gCambio);
        }
    }
    
    public void swap(Grupo g1, int heli1, int trayecto1, Grupo g2, int heli2, int trayecto2){
        // Eliminamos el grupo de los trayectos y añadimos el otro grupo
        rescates.get(heli1).get(trayecto1).eliminaGrupo(g1);
        rescates.get(heli1).get(trayecto1).añadeGrupo(g2);
        
        rescates.get(heli2).get(trayecto2).eliminaGrupo(g2);
        rescates.get(heli2).get(trayecto2).añadeGrupo(g1);
    }

    /*********************************************************************************************************/
    /** Función heurística
     * @return Tiempo total de la solución según el heurístico 1 o 2
     */

    public double heuristic(){
        // compute the number of coins out of place respect to solution
        byte experiment = 2; // experimento 1 o 2
        int inf = Integer.MAX_VALUE;
        //if (!todosLosGruposRescatados()) return inf; //solución mala, no se recogen todos los grupos
        
        if (experiment == 1){ 
            return calculaTiempoTotal();
        }
        else{
            float k = 0.7f;
            float j = 1f - k;
            
            double tiempoTotal = calculaTiempoTotal();
            double tiempoGruposPrio1 = calculaTiempoHastaGrupoPrio1();
            
            return k * tiempoTotal + j * tiempoGruposPrio1;
        }
    }
    /**
     * Función que calcula el tiempo total de rescatar a todos los grupos
     * @return Tiempo total en rescatar a todos los grupos
     */
    private double calculaTiempoTotal(){
        double tiempo = 0;
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
    private double calculaTiempoHastaGrupoPrio1(){
        /*double tiempoHastaElPrimero = 0;
        Boolean encontrado = false;
        int n = getUltimoTrayecto();
        for (int t = n; t > 0; --t){
            for (int i = 0; i < rescates.size(); ++i){ // Miramos por todos los helicopteros, desde el que tiene más trayectos
                if (rescates.get(i).size() == n){ // Nos quedamos con los que tienen más trayectos
                    if (!encontrado){
                        for (int j = n-1; j > 0; --j){ //De entre todos sus trayectos miramos si tiene algun grupo de prioridad 1, si no seguimos buscando
                            Trayecto tray = rescates.get(i).get(j);
                            for (int grupo = 0; grupo < tray.getNGrupos(); ++grupo){
                                if (tray.getGrupo(grupo) != null && tray.getGrupo(grupo).getPrioridad() == 1) encontrado = true;
                            }
                            if (encontrado) break;
                            tiempoHastaElPrimero += tray.getTiempo();
                        }
                    }
                    else{ //Ya hemos encontrado un grupo de prioridad 1, miramos el resto de posibles helicopteros con trayectos con grupos de prio1
                        
                    }
                    
                }
            }
        }
        return tiempoHastaElPrimero;*/
        
        double tiempoGruposPrio1 = 0;
        for (int i = 0; i < rescates.size(); ++i){
            ArrayList<Trayecto> trayectosHeli = rescates.get(i);
            double tiempoHeli = 0;
            Boolean first = true;
            // Buscamos el tiempo de entre todos los trayectos hasta el primer grupo con prio 1 
            for (int j = trayectosHeli.size() -1; j >= 0; --j){
                Trayecto tray = trayectosHeli.get(j);
                Boolean tieneGrupoPrio1 = false;
                if (first) first = false;
                else tiempoHeli += 10;
                //Miramos si el trayecto tiene algun grupo de prioridad 1
                for (int g = 0; g < tray.getNGrupos(); ++g){
                    Grupo grupo = tray.getGrupo(g);
                    if (grupo == null) break;
                    if (grupo.getPrioridad() == 1){tieneGrupoPrio1 = true; break;}
                }
                
                if (!tieneGrupoPrio1) tiempoHeli += tray.getTiempo();
                else break;
            }
            //Calculamos el tiempo total de los trayectos del heli
            double tiempoTotalTrayectos = 0;
            for (int j = 0; j < trayectosHeli.size(); ++j){
                tiempoTotalTrayectos += trayectosHeli.get(j).getTiempo();
            } tiempoTotalTrayectos += 10*(trayectosHeli.size()-1);
            
            if (tiempoTotalTrayectos == tiempoHeli) tiempoGruposPrio1 += 0; //O no hay grupos de prio 1 o se recoge el primero
            else {
                tiempoGruposPrio1 += (tiempoTotalTrayectos-tiempoHeli); //Tiempo hasta llegar al trayecto que recoge el ultimo grupo de prio 1 del heli
            }
        }
        return tiempoGruposPrio1;
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
                for (int grupo = 0; grupo < tray.getNGrupos(); ++grupo){
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
         if (rescates.get(heli).size() == 0) return 0;
         return rescates.get(heli).get(tray).getNGrupos();
     }
     
     public int getNpersonas(int heli, int tray, int grupo){
         if (rescates.get(heli).size() == 0) return 0;
         return rescates.get(heli).get(tray).getNpersonas(grupo);
     }
     
     public Grupo getGrupo(int heli, int tray, int grupo){
         if (rescates.get(heli).size() == 0) return null;
         return rescates.get(heli).get(tray).getGrupo(grupo);
     }
     
     
     public void printEstado() {
        
         // DEBUG
        int h = 0;
        for (ArrayList<Trayecto> a : rescates) {
            int t = 0;
            for (Trayecto tr : a) {
                System.out.print("Heli: " + h + "\t\t" + "XY: " + tr.getCentroIni().getCoordX() + " " + tr.getCentroIni().getCoordY() + "\tTray: " + t + "(" + tr.getTiempo() + ")" +"\t\tGrupos: " + tr.getNGrupos() + " -->");
                for (int i=0; i<tr.getNGrupos(); i++)
                    System.out.print(" (" + tr.getGrupo(i).getCoordX() + ", " + tr.getGrupo(i).getCoordY() + ")" + "[" + tr.getGrupo(i).getPrioridad() + "]");                
                System.out.println();
                t++;
            }
            h++;
        }
        double tiempoTotal = calculaTiempoTotal();
        double tiempoGruposPrio1 = calculaTiempoHastaGrupoPrio1();
        System.out.println("Tiempo total: " + tiempoTotal);
        System.out.println("Tiempo grupos prioridad 1: " + tiempoGruposPrio1);
     }
}