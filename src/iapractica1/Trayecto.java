/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 
package iapractica1;

import IA.Desastres.Centro;
import IA.Desastres.Grupo;

/**
 *
 * @author albert.carreira
 */
class Trayecto {
    private Grupo g1 = null;
    private Grupo g2 = null;
    private Grupo g3 = null;
    
    private Centro centroBase;
    
    private int capacidad;
    private double tiempo;
    
    public static final double velocidad = 100;
    
    public Trayecto(Centro centroIni){
        capacidad = 15;
        tiempo = 0;
        centroBase = centroIni;
    }
    
    public void añadeGrupo(Grupo g){
        if (g1 == null) {
            g1 = g;
            tiempo += calculaTiempo(centroBase.getCoordX(), centroBase.getCoordY(), 
                                    g1.getCoordX(), g1.getCoordY());
            if (g2 != null) // Si hemos hecho swap
                tiempo += calculaTiempo(g1.getCoordX(), g1.getCoordY(), 
                                        g2.getCoordX(), g2.getCoordY());
        }
        else {
            if (g2 == null){
                g2 = g;
                tiempo += calculaTiempo(g1.getCoordX(), g1.getCoordY(), 
                                    g2.getCoordX(), g2.getCoordY());
                if (g3 != null) // Si hemos hecho swap
                tiempo += calculaTiempo(g2.getCoordX(), g2.getCoordY(), 
                                        g3.getCoordX(), g3.getCoordY());
            }
            else if (g3 == null) {
                g3 = g;
                tiempo += calculaTiempo(g2.getCoordX(), g2.getCoordY(), 
                                    g3.getCoordX(), g3.getCoordY());
            }
        }

        capacidad -= g.getNPersonas();
        tiempo += calculaTiempoRecoger(g);
    }
    
    // Para hacer SWAP eliminamos y volvemos a añadir
    public void eliminaGrupo(Grupo g){
        if (g1.equals(g)) {
            tiempo -= calculaTiempo(centroBase.getCoordX(), centroBase.getCoordY(), 
                                    g1.getCoordX(), g1.getCoordY());
            if (g2 != null) // Si hemos hecho swap
                tiempo -= calculaTiempo(g1.getCoordX(), g1.getCoordY(), 
                                        g2.getCoordX(), g2.getCoordY());
            g1 = null;
        }
        else {
            if (g2.equals(g)){
                tiempo -= calculaTiempo(g1.getCoordX(), g1.getCoordY(), 
                                    g2.getCoordX(), g2.getCoordY());
                if (g3 != null) // Si hemos hecho swap
                tiempo -= calculaTiempo(g2.getCoordX(), g2.getCoordY(), 
                                        g3.getCoordX(), g3.getCoordY());
                g2 = null;
            }
            else if (g3.equals(g)) {
                tiempo -= calculaTiempo(g2.getCoordX(), g2.getCoordY(), 
                                    g3.getCoordX(), g3.getCoordY());
                g3 = null;
            }
        }

        capacidad += g.getNPersonas();
        tiempo -= calculaTiempoRecoger(g);
    }
    
    public boolean eliminaReordenaGrupo(Grupo g){
        //eliminamos el grupo g y reordenamos los grupos para que los primeros
        //esten siempre ocupados antes que los ultimos
        //devuelve true cuando g1, g2 y g3 son null
        if(g1.equals(g)){
            if(g2 == null){
                return true;
            }
            tiempo -= calculaTiempo(centroBase.getCoordX(), centroBase.getCoordY(), 
                        g1.getCoordX(), g1.getCoordY());
            tiempo -= calculaTiempo(g1.getCoordX(), g1.getCoordY(), g2.getCoordX(),
                        g2.getCoordY());
            g1 = g2;
            g2 = null;
            tiempo += calculaTiempo(centroBase.getCoordX(), centroBase.getCoordY(), 
                                    g1.getCoordX(), g1.getCoordY());
            if(g3 != null){
                g2 = g3;
                g3 = null;
            }

        }
        else{
            if(g2.equals(g)){
                tiempo -= calculaTiempo(g1.getCoordX(), g1.getCoordY(), g2.getCoordX(),
                        g2.getCoordY());
                if(g3!= null){
                    tiempo -= calculaTiempo(g2.getCoordX(), g2.getCoordY(), g3.getCoordX(),
                        g3.getCoordY());
                    g2 = g3;
                    g3 = null;
                    tiempo += calculaTiempo(g1.getCoordX(), g1.getCoordY(), g2.getCoordX(),
                        g2.getCoordY());
                }
                else{
                    g2 = null;
                }
            }
            else if(g3.equals(g)){
                tiempo -= calculaTiempo(g2.getCoordX(), g2.getCoordY(), g3.getCoordX(),
                    g3.getCoordY());
                g3 = null;
            }
        }
        return false;
    }
    
    public int getCapacidad(){ return capacidad;}
    
    public double getTiempo() {
        double tiempoVuelta = 0;
        
        if (g1 != null) {
            if (g2 == null) tiempoVuelta = calculaTiempo(centroBase.getCoordX(), centroBase.getCoordY(), 
                                        g1.getCoordX(), g1.getCoordY());
            else if (g3 == null) tiempoVuelta = calculaTiempo(centroBase.getCoordX(), centroBase.getCoordY(), 
                                        g2.getCoordX(), g2.getCoordY());
            else tiempoVuelta = calculaTiempo(centroBase.getCoordX(), centroBase.getCoordY(), 
                                        g3.getCoordX(), g3.getCoordY());
        }
        return tiempo + tiempoVuelta;
    }
    
    
    public Boolean cabeGrupo(Grupo g){
        if (g3 == null && g.getNPersonas() <= capacidad) return Boolean.TRUE;
        else return Boolean.FALSE;
    }
    
    public int getNGrupos() {
        int n=0;
        if (g1 != null) n++;
        if (g2 != null) n++;
        if (g3 != null) n++;
        
        return n;
    }
    
    public Grupo getGrupo(int i) {
        switch(i) {
            case 0: return g1;
            case 1: return g2;
            case 2: return g3;
            default: return null;
        }
    }
    
    public int getNpersonas(int grupo){
        switch(grupo){
            case 0: return g1.getNPersonas();
            case 1: return g2.getNPersonas();
            case 2: return g3.getNPersonas();
            default: return -1;
        }
    }
    
    public Trayecto clone() {
        Trayecto clon = new Trayecto(centroBase);
        clon.g1 = this.g1;
        clon.g2 = this.g2;
        clon.g3 = this.g3;
        clon.capacidad = this.capacidad;
        clon.tiempo = this.tiempo;
        
        return clon;
    }
    
    
    private double calculaTiempo(int x1, int y1, int x2, int y2){
        int xv = Math.abs(x2 - x1);
        int yv = Math.abs(y2 - y1);
        double distancia = Math.hypot(xv, yv);
        return (distancia / velocidad);
    }
    private double calculaTiempoRecoger(Grupo g){
        double tiempo = g.getNPersonas();
        if (g.getPrioridad() == 1) return 2*tiempo;
        else return tiempo;
    }

    public Centro getCentroIni() {
        return centroBase;
    }
}
