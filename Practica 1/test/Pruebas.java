
import IA.Desastres.Centro;
import IA.Desastres.Centros;
import IA.Desastres.Grupos;
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author alber
 */
public class Pruebas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int ncentros = 10;
        int ngrupos = 11;
        int nhelicopteros = 10; // Numero de helicopteros en cada centro ¿? DUDA DOC.
        int initialState = 1;
        
        
        Centros cs = new Centros(ncentros, nhelicopteros, 10);
        Grupos gs = new Grupos(ngrupos,10);
        ArrayList<ArrayList<Trayecto>> rescates = new ArrayList<>();
        //Imprime grupos
        for (int i = 0; i < gs.size(); ++i){
            System.out.println("Grupo " + i + " con prioridad " + gs.get(i).getPrioridad() + " y " + gs.get(i).getNPersonas() + " personas");
        }
        
        Centro c = new Centro(0,0,nhelicopteros);
        Centro c1 = new Centro(0,10,nhelicopteros);
        Centro c2 = new Centro(10,0,nhelicopteros);
        Centro c3 = new Centro(10,10,nhelicopteros);
        
        Trayecto t = new Trayecto(c); for(int i = 0; i < 3; ++i) t.añadeGrupo(gs.get(i));
        Trayecto t1 = new Trayecto(c1); for(int i = 3; i < 6; ++i) t1.añadeGrupo(gs.get(i));
        Trayecto t2 = new Trayecto(c2); for(int i = 6; i < 9; ++i) t2.añadeGrupo(gs.get(i));
        Trayecto t3 = new Trayecto(c3); for(int i = 9; i < gs.size(); ++i) t3.añadeGrupo(gs.get(i));
        
        ArrayList<Trayecto> l = new ArrayList<>(); l.add(t); l.add(t1);
        ArrayList<Trayecto> l2 = new ArrayList<>(); l2.add(t2);
        ArrayList<Trayecto> l3 = new ArrayList<>(); l3.add(t3);
        
        rescates.add(l); rescates.add(l2); rescates.add(l3);
        
        for (int i = 0; i < rescates.size(); ++i){
            System.out.println("Rescate " + i + ": ");
            for (int j = 0; j < rescates.get(i).size();++j){
                System.out.println("\tHelicoptero " + j + " --> Xc = " + rescates.get(i).get(j).getCentro().getCoordX() + ", Yc = " + rescates.get(i).get(j).getCentro().getCoordY());
                for (int k = 0; k < rescates.get(i).get(j).getNGrupos(); ++k){
                    System.out.println("\t\tGrupo " + k+1 + ": X = " + rescates.get(i).get(j).getGrupo(k+1).getCoordX() + ", Y = " + rescates.get(i).get(j).getGrupo(k+1).getCoordY());
                }
            }
        }
        
        System.out.println("__________________CALCULO DEL TIEMPO_________________");
        for (int i = 0; i < rescates.size(); ++i){
            System.out.println("Centro " + i + ": ");
            for (int j = 0; j < rescates.get(i).size();++j){
                System.out.println(rescates.get(i).get(j).getTiempo());
            }
        }
        
        
        
        //Imprime 
    }
    
}
