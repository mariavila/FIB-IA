/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iapractica1;

import IA.Desastres.Centros;
import IA.Desastres.Grupos;
import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.SimulatedAnnealingSearch;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Random;


/**
 *
 * @author Bermellet
 */
public class IAPractica1JFrame extends javax.swing.JFrame {
    
    /**
     * Creates new form IAPractica1JFrame
     */
    public IAPractica1JFrame() {
        //initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        BG_Algoritmo = new javax.swing.ButtonGroup();
        BG_Heuristic = new javax.swing.ButtonGroup();
        BG_EstadoInicial = new javax.swing.ButtonGroup();
        Label_NumCentros = new javax.swing.JLabel();
        Slider_NumCentros = new javax.swing.JSlider();
        Label_NumGrupos = new javax.swing.JLabel();
        Slider_NumGrupos = new javax.swing.JSlider();
        Label_NumHelis = new javax.swing.JLabel();
        Slider_NumHelis = new javax.swing.JSlider();
        jLayeredPane1 = new javax.swing.JLayeredPane();
        RB_Heuristic1 = new javax.swing.JRadioButton();
        RB_Heuristic2 = new javax.swing.JRadioButton();
        Label_Heuristico = new javax.swing.JLabel();
        jLayeredPane2 = new javax.swing.JLayeredPane();
        RB_EstadoInicial3 = new javax.swing.JRadioButton();
        Label_EstadoInicial = new javax.swing.JLabel();
        RB_EstadoInicial1 = new javax.swing.JRadioButton();
        RB_EstadoInicial2 = new javax.swing.JRadioButton();
        jLayeredPane3 = new javax.swing.JLayeredPane();
        RB_HillClimbing = new javax.swing.JRadioButton();
        RB_SimulatedAnnealing = new javax.swing.JRadioButton();
        Label_Algoritmo = new javax.swing.JLabel();
        Label_ValNumCentros = new javax.swing.JLabel();
        Label_ValNumGrupos = new javax.swing.JLabel();
        Label_ValNumHelis = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        Label_NumCentros.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        Label_NumCentros.setText("Nº Centros");

        Slider_NumCentros.setMinimum(1);
        Slider_NumCentros.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                Slider_NumCentrosStateChanged(evt);
            }
        });

        Label_NumGrupos.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        Label_NumGrupos.setText("Nº Grupos");

        Slider_NumGrupos.setMaximum(150);
        Slider_NumGrupos.setMinimum(1);
        Slider_NumGrupos.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                Slider_NumGruposStateChanged(evt);
            }
        });

        Label_NumHelis.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        Label_NumHelis.setText("Helicóperos por Grupo");

        Slider_NumHelis.setMinimum(1);
        Slider_NumHelis.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                Slider_NumHelisStateChanged(evt);
            }
        });

        BG_Heuristic.add(RB_Heuristic1);
        RB_Heuristic1.setSelected(true);
        RB_Heuristic1.setText("Tiempo total");

        BG_Heuristic.add(RB_Heuristic2);
        RB_Heuristic2.setText("Tiempo prioridad 1");

        Label_Heuristico.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        Label_Heuristico.setText("Heurístico");

        jLayeredPane1.setLayer(RB_Heuristic1, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jLayeredPane1.setLayer(RB_Heuristic2, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jLayeredPane1.setLayer(Label_Heuristico, javax.swing.JLayeredPane.DEFAULT_LAYER);

        javax.swing.GroupLayout jLayeredPane1Layout = new javax.swing.GroupLayout(jLayeredPane1);
        jLayeredPane1.setLayout(jLayeredPane1Layout);
        jLayeredPane1Layout.setHorizontalGroup(
            jLayeredPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jLayeredPane1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jLayeredPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jLayeredPane1Layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addGroup(jLayeredPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(RB_Heuristic1)
                            .addComponent(RB_Heuristic2)))
                    .addComponent(Label_Heuristico))
                .addGap(20, 20, 20))
        );
        jLayeredPane1Layout.setVerticalGroup(
            jLayeredPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jLayeredPane1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(Label_Heuristico)
                .addGap(5, 5, 5)
                .addComponent(RB_Heuristic1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(RB_Heuristic2)
                .addContainerGap())
        );

        BG_EstadoInicial.add(RB_EstadoInicial3);
        RB_EstadoInicial3.setText("3 (Avanzado)");

        Label_EstadoInicial.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        Label_EstadoInicial.setText("Estado Inicial");

        BG_EstadoInicial.add(RB_EstadoInicial1);
        RB_EstadoInicial1.setSelected(true);
        RB_EstadoInicial1.setText("1 (Simple)");

        BG_EstadoInicial.add(RB_EstadoInicial2);
        RB_EstadoInicial2.setText("2 (Medio)");

        jLayeredPane2.setLayer(RB_EstadoInicial3, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jLayeredPane2.setLayer(Label_EstadoInicial, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jLayeredPane2.setLayer(RB_EstadoInicial1, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jLayeredPane2.setLayer(RB_EstadoInicial2, javax.swing.JLayeredPane.DEFAULT_LAYER);

        javax.swing.GroupLayout jLayeredPane2Layout = new javax.swing.GroupLayout(jLayeredPane2);
        jLayeredPane2.setLayout(jLayeredPane2Layout);
        jLayeredPane2Layout.setHorizontalGroup(
            jLayeredPane2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jLayeredPane2Layout.createSequentialGroup()
                .addGroup(jLayeredPane2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jLayeredPane2Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(Label_EstadoInicial))
                    .addGroup(jLayeredPane2Layout.createSequentialGroup()
                        .addGap(29, 29, 29)
                        .addGroup(jLayeredPane2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(RB_EstadoInicial1)
                            .addComponent(RB_EstadoInicial2)
                            .addComponent(RB_EstadoInicial3))))
                .addGap(40, 40, 40))
        );
        jLayeredPane2Layout.setVerticalGroup(
            jLayeredPane2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jLayeredPane2Layout.createSequentialGroup()
                .addGap(6, 6, 6)
                .addComponent(Label_EstadoInicial)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(RB_EstadoInicial1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(RB_EstadoInicial2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(RB_EstadoInicial3)
                .addContainerGap())
        );

        BG_Algoritmo.add(RB_HillClimbing);
        RB_HillClimbing.setSelected(true);
        RB_HillClimbing.setText("Hill Climbing");

        BG_Algoritmo.add(RB_SimulatedAnnealing);
        RB_SimulatedAnnealing.setText("Simulated Annealing");

        Label_Algoritmo.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        Label_Algoritmo.setText("Algoritmo");

        jLayeredPane3.setLayer(RB_HillClimbing, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jLayeredPane3.setLayer(RB_SimulatedAnnealing, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jLayeredPane3.setLayer(Label_Algoritmo, javax.swing.JLayeredPane.DEFAULT_LAYER);

        javax.swing.GroupLayout jLayeredPane3Layout = new javax.swing.GroupLayout(jLayeredPane3);
        jLayeredPane3.setLayout(jLayeredPane3Layout);
        jLayeredPane3Layout.setHorizontalGroup(
            jLayeredPane3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jLayeredPane3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jLayeredPane3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jLayeredPane3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(RB_SimulatedAnnealing)
                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jLayeredPane3Layout.createSequentialGroup()
                            .addComponent(RB_HillClimbing)
                            .addGap(40, 40, 40)))
                    .addComponent(Label_Algoritmo))
                .addContainerGap())
        );
        jLayeredPane3Layout.setVerticalGroup(
            jLayeredPane3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jLayeredPane3Layout.createSequentialGroup()
                .addGap(8, 8, 8)
                .addComponent(Label_Algoritmo)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(RB_HillClimbing)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(RB_SimulatedAnnealing)
                .addContainerGap())
        );

        Label_ValNumCentros.setText("50");

        Label_ValNumGrupos.setText("50");

        Label_ValNumHelis.setText("50");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(Label_NumCentros, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(Label_ValNumCentros))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(Label_NumHelis)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(Label_ValNumHelis))
                            .addComponent(Slider_NumHelis, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(Label_NumGrupos)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(Label_ValNumGrupos))
                            .addComponent(Slider_NumGrupos, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(Slider_NumCentros, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(79, 79, 79)
                        .addComponent(jLayeredPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLayeredPane3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLayeredPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(175, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(16, 16, 16)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLayeredPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLayeredPane3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jLayeredPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(25, 25, 25)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(Label_NumCentros, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(Label_ValNumCentros))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(Slider_NumCentros, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(101, 101, 101)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(Label_NumGrupos)
                            .addComponent(Label_ValNumGrupos))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(Slider_NumGrupos, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(Label_NumHelis)
                            .addComponent(Label_ValNumHelis))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(Slider_NumHelis, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(233, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void Slider_NumCentrosStateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_Slider_NumCentrosStateChanged
        Label_ValNumCentros.setText(String.valueOf(Slider_NumCentros.getValue()));
    }//GEN-LAST:event_Slider_NumCentrosStateChanged

    private void Slider_NumGruposStateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_Slider_NumGruposStateChanged
        Label_ValNumGrupos.setText(String.valueOf(Slider_NumGrupos.getValue()));
    }//GEN-LAST:event_Slider_NumGruposStateChanged

    private void Slider_NumHelisStateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_Slider_NumHelisStateChanged
        Label_ValNumHelis.setText(String.valueOf(Slider_NumHelis.getValue()));
    }//GEN-LAST:event_Slider_NumHelisStateChanged

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(IAPractica1JFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(IAPractica1JFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(IAPractica1JFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(IAPractica1JFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new IAPractica1JFrame().setVisible(true);
                Practica1Rescats p = new Practica1Rescats();
                p.inicializar();
            }
        });
    }

        
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.ButtonGroup BG_Algoritmo;
    private javax.swing.ButtonGroup BG_EstadoInicial;
    private javax.swing.ButtonGroup BG_Heuristic;
    private javax.swing.JLabel Label_Algoritmo;
    private javax.swing.JLabel Label_EstadoInicial;
    private javax.swing.JLabel Label_Heuristico;
    private javax.swing.JLabel Label_NumCentros;
    private javax.swing.JLabel Label_NumGrupos;
    private javax.swing.JLabel Label_NumHelis;
    private javax.swing.JLabel Label_ValNumCentros;
    private javax.swing.JLabel Label_ValNumGrupos;
    private javax.swing.JLabel Label_ValNumHelis;
    private javax.swing.JRadioButton RB_EstadoInicial1;
    private javax.swing.JRadioButton RB_EstadoInicial2;
    private javax.swing.JRadioButton RB_EstadoInicial3;
    private javax.swing.JRadioButton RB_Heuristic1;
    private javax.swing.JRadioButton RB_Heuristic2;
    private javax.swing.JRadioButton RB_HillClimbing;
    private javax.swing.JRadioButton RB_SimulatedAnnealing;
    private javax.swing.JSlider Slider_NumCentros;
    private javax.swing.JSlider Slider_NumGrupos;
    private javax.swing.JSlider Slider_NumHelis;
    private javax.swing.JLayeredPane jLayeredPane1;
    private javax.swing.JLayeredPane jLayeredPane2;
    private javax.swing.JLayeredPane jLayeredPane3;
    // End of variables declaration//GEN-END:variables
}
