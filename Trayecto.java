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
    Grupo g1 = null;
    Grupo g2 = null;
    Grupo g3 = null;
    
    Centro centroBase;
    
    int capacidad;
    double tiempo;
    
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
                                    g.getCoordX(), g.getCoordY());
        }
        else {
            if (g2 == null){
                g2 = g;
                
                
                
            }
            else if (g3 == null) {
                g3 = g;
                
                
            }
            
        }

        capacidad -= g.getNPersonas();
        tiempo += calculaTiempoRecoger(g);
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