package iapractica1;

import aima.search.framework.SuccessorFunction;
import aima.search.framework.Successor;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class IAPractica1SASuccesorFunction implements SuccessorFunction{

    public List getSuccessors(Object state){
        IAPractica1Board board = (IAPractica1Board) state;
        IAPractica1Board successor = board.clone();
        ArrayList<Successor> retval = new ArrayList<>();
        int nHeli = board.getNHeli();
        Boolean validState = false;
        
        while (!validState){
            /*  SEEDS ALEATORIAS */
            Random rand = new Random();
            int min = 0, max = nHeli, rango = max - min;                      int heli1 = rand.nextInt(rango) + min;
            min = 0; max = board.getNTrayectorias(heli1); rango = max - min ; 
            int tray1 = 0;
            if (rango == 0) continue; // No existirá ningún trayecto
            else tray1 = rand.nextInt(rango) + min;
            min = 0; max = nHeli; rango = max - min;                          int heli2 = rand.nextInt(rango) + min;
            min = 0; max = board.getNTrayectorias(heli2); rango = max - min ; 
            int tray2;
            if (rango == 0) continue; // No existirá ningún trayecto
            else tray2 = rand.nextInt(rango) + min;
            min = 0; max = 3; rango = max - min;                              int operator = rand.nextInt(rango) + min;

            // Conditions
            int nGrupos1 = board.getNgrupos(heli1, tray1);
            int nGrupos2 = board.getNgrupos(heli2, tray2);

            int nPersonas1 = 0;
            for(int i = 0; i<nGrupos1; ++ i){
                nPersonas1 += board.getNpersonas(heli1, tray1, i);
            }

            int nPersonas2 = 0;
            for(int i = 0; i<nGrupos2; ++ i){
                nPersonas2 += board.getNpersonas(heli2, tray2, i);
            }
        
            // Choose which operator we apply
            if (operator == 0 && !(heli1 == heli2 && tray1==tray2) && nGrupos2 < 3){
                for(int i = 0; i<nGrupos1; ++i){ //para no hacer dos veces el mismo swap
                    if(nPersonas2 + board.getNpersonas(heli1, tray1, i) <= 15){
                        validState = true;
                        successor.move(board.getGrupo(heli1, tray1, i), heli1, tray1, heli2, tray2);
                        Successor succ = new Successor("move to existing g: " + i + " t: " + tray1 + " h: " + heli1 + 
                                            " to t: " + tray2 + " h: " + heli2, successor);
                        retval.add(succ);
                        return retval;
                    }
                }
            }
            else if (operator == 1){
                min = 0; max = nGrupos1; rango = max - min ; if (rango == 0) rango = 1;int g1 = min + rand.nextInt(rango);
                min = 0; max = nGrupos2; rango = max - min; if (rango == 0) rango = 1;int g2 = rand.nextInt(rango) + min;
                if(!(heli1 == heli2 && tray1==tray2 && g1==g2)){ 
                    //si podemos hacer el swap entre g1 y g2
                    //se tiene en cuenta que despues del swap no se supere el numero max de personas en cada trayecto
                    if(nPersonas1 - board.getNpersonas(heli1, tray1, g1) + board.getNpersonas(heli2, tray2,g2) <= 15
                        && nPersonas2 - board.getNpersonas(heli2, tray2, g2) + board.getNpersonas(heli1, tray1,g1) <= 15){
                        validState = true;
                        successor.swap(board.getGrupo(heli1, tray1, g1), heli1, tray1, board.getGrupo(heli2, tray2, g2), heli2, tray2);
                        Successor succ = new Successor("swap g: " + g1 + " t: " + tray1 + " h: " + heli1 + 
                                            " with g: " + g2 + " t: " + tray2 + " h: " + heli2, successor);
                        retval.add(succ);
                        return retval;
                    }
                }
            }
            else if (heli1!=heli2){
                for(int i = 0; i< board.getNgrupos(heli1, tray1); ++i){
                    validState = true;
                    successor.move(board.getGrupo(heli1, tray1, i), heli1, tray1, heli2, board.getNTrayectorias(heli2));
                    Successor succ = new Successor("move to new g: " + i + " t: " + tray1 + " h: " + heli1 + 
                                        " to t: " + board.getNTrayectorias(heli2) + " h: " + heli2, successor);
                    retval.add(succ);
                    return retval;
                }
            }
        }
        return retval;
    }
}
