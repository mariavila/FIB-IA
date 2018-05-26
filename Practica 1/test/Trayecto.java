/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 


import iapractica1.*;
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
    public Centro getCentro(){return centroBase;}
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
            g1 = null;
            tiempo -= calculaTiempo(centroBase.getCoordX(), centroBase.getCoordY(), 
                                    g1.getCoordX(), g1.getCoordY());
            if (g2 != null) // Si hemos hecho swap
                tiempo -= calculaTiempo(g1.getCoordX(), g1.getCoordY(), 
                                        g2.getCoordX(), g2.getCoordY());
        }
        else {
            if (g2.equals(g)){
                g2 = null;
                tiempo -= calculaTiempo(g1.getCoordX(), g1.getCoordY(), 
                                    g2.getCoordX(), g2.getCoordY());
                if (g3 != null) // Si hemos hecho swap
                tiempo -= calculaTiempo(g2.getCoordX(), g2.getCoordY(), 
                                        g3.getCoordX(), g3.getCoordY());
            }
            else if (g3.equals(g)) {
                g3 = null;
                tiempo -= calculaTiempo(g2.getCoordX(), g2.getCoordY(), 
                                    g3.getCoordX(), g3.getCoordY());
            }
        }

        capacidad += g.getNPersonas();
        tiempo -= calculaTiempoRecoger(g);
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
            case 1: return g1;
            case 2: return g2;
            case 3: return g3;
            default: return null;
        }
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
}
