package iapractica1;

import aima.search.framework.SuccessorFunction;
import aima.search.framework.Successor;
import java.util.ArrayList;
import java.util.List;

public class IAPractica1SuccesorFunction implements SuccessorFunction{

    public List getSuccessors(Object state){
        ArrayList retval = new ArrayList();
        IAPractica1Board board = (IAPractica1Board) state;
        
        int nHeli = board.getNHeli();
        
        // Create new states using the operator move and swap
        for (int heli1 = 0; heli1 < nHeli; ++heli1){
            for(int tray1=0; tray1< board.getNTrayectorias(heli1); ++tray1){
                //for(int heli2 = heli1; heli2 < nHeli; ++heli2){
                for(int heli2 = 0; heli2 < nHeli; ++heli2){
                    for(int tray2 = 0; tray2 < board.getNTrayectorias(heli2); ++tray2){
                        
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
                        
                        //MOVE   
                        /**
                        //si hay uno o mas espacios en tray1
                        if(nGrupos1 < 3){
                            for(int i = 0; i<nGrupos2; ++i){
                                if(nPersonas1 + board.getNpersonas(heli2, tray2, i) <= 15){
                                    IAPractica1Board b = board.clone();
                                    b.move(board.getGrupo(heli2, tray2, i), heli2, tray2, heli1, tray1);
                                    Successor succ = new Successor("move g: " + i + " t: " + tray2 + " h: " + heli2 + 
                                                        "to t: " + tray1 + " h: " + heli1, b);
                                    retval.add(succ);
                                }
                            }
                        }
                       */
                        //si hay uno o mas espacios en tray2
                        if(nGrupos2 < 3){
                            for(int i = 0; i<nGrupos1; ++i){ //para no hacer dos veces el mismo swap
                                if(nPersonas2 + board.getNpersonas(heli1, tray1, i) <= 15){
                                    IAPractica1Board b = board.clone();
                                    b.move(board.getGrupo(heli1, tray1, i), heli1, tray1, heli2, tray2);
                                    Successor succ = new Successor("move g: " + i + " t: " + tray1 + " h: " + heli1 + 
                                                        "to t: " + tray2 + " h: " + heli2, b);
                                    retval.add(succ);
                                }
                            }
                        }
                        
                        //SWAP
                        if(heli2 >= heli1){
                            for(int g1 = 0; g1 < nGrupos1; ++g1){
                                for(int g2 = 0; g2 < nGrupos2; ++g2){
                                    //si podemos hacer el swap entre g1 y g2
                                    //se tiene en cuenta que despues del swap no se supere el numero max de personas en cada trayecto
                                    if(nPersonas1 - board.getNpersonas(heli1, tray1, g1) + board.getNpersonas(heli2, tray2,g2) <= 15
                                        && nPersonas2 - board.getNpersonas(heli2, tray2, g2) + board.getNpersonas(heli1, tray1,g1) <= 15){
                                        IAPractica1Board b = board.clone();
                                        b.swap(board.getGrupo(heli1, tray1, g1), heli1, tray1, board.getGrupo(heli2, tray2, g2), heli2, tray2);
                                        Successor succ = new Successor("swap g: " + g1 + " t: " + tray1 + " h: " + heli1 + 
                                                            "with g: " + g2 + " t: " + tray2 + " h: " + heli2, b);
                                        retval.add(succ);
                                    }
                                }
                            }
                        }
                    }
                    //MOVE
                    //añadir un nuevo trayecto a heli2 que recoja un grupo de heli1 tray1
                    for(int i = 0; i< board.getNgrupos(heli1, tray1); ++i){
                        IAPractica1Board b = board.clone();
                        b.move(board.getGrupo(heli1, tray1, i), heli1, tray1, heli2, board.getNTrayectorias(heli2));
                        Successor succ = new Successor("move g: " + i + " t: " + tray1 + " h: " + heli1 + 
                                            "to t: " + board.getNTrayectorias(heli2) + " h: " + heli2, b);
                        retval.add(succ);
                    }
                }
            }
        }
        return retval;
    }
}
