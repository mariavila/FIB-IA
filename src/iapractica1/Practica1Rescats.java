/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iapractica1;

import java.awt.Component;
import java.util.ArrayList;



/**
 *
 * @author Bermellet
 */
public class Practica1Rescats extends javax.swing.JFrame {
    
    /**
     * Creates new form IAPractica1JFrame
     */
    public Practica1Rescats() {
        initComponents();
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
        button_GO = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        textFin = new javax.swing.JTextArea();
        Label_NumHelis1 = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        textIni = new javax.swing.JTextArea();
        Label_NumHelis2 = new javax.swing.JLabel();
        jScrollPane3 = new javax.swing.JScrollPane();
        textEjec = new javax.swing.JTextArea();
        Label_NumHelis3 = new javax.swing.JLabel();

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
        Label_NumHelis.setText("Helicóperos por Centro");

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

        button_GO.setText("GO!");
        button_GO.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                button_GOActionPerformed(evt);
            }
        });

        textFin.setColumns(20);
        textFin.setRows(5);
        jScrollPane1.setViewportView(textFin);

        Label_NumHelis1.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        Label_NumHelis1.setText("Resultado inicial");

        textIni.setColumns(20);
        textIni.setRows(5);
        textIni.setTabSize(2);
        jScrollPane2.setViewportView(textIni);

        Label_NumHelis2.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        Label_NumHelis2.setText("Resultado final");

        textEjec.setColumns(1);
        textEjec.setFont(new java.awt.Font("Dialog", 0, 24)); // NOI18N
        textEjec.setRows(1);
        textEjec.setTabSize(4);
        textEjec.setAlignmentX(1.0F);
        textEjec.setAlignmentY(1.0F);
        jScrollPane3.setViewportView(textEjec);

        Label_NumHelis3.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        Label_NumHelis3.setText("Tiempo de ejecución (ms)");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(25, 25, 25)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLayeredPane3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jLayeredPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
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
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(127, 127, 127)
                                        .addComponent(jLayeredPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(button_GO, javax.swing.GroupLayout.PREFERRED_SIZE, 84, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(51, 51, 51)))))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 167, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(Label_NumHelis3)))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jScrollPane2)
                        .addGap(18, 18, 18)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 335, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(22, 22, 22))
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(Label_NumHelis1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(Label_NumHelis2)
                .addGap(273, 273, 273))
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
                        .addComponent(Slider_NumHelis, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jLayeredPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(14, 14, 14)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(Label_NumHelis3)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 91, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(button_GO, javax.swing.GroupLayout.PREFERRED_SIZE, 142, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addGap(57, 57, 57)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(Label_NumHelis1)
                    .addComponent(Label_NumHelis2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 188, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 188, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(26, Short.MAX_VALUE))
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

    private void button_GOActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_button_GOActionPerformed
        IAPractica1 practica = new IAPractica1();
        String alg = "HillClimbing";
        if (RB_HillClimbing.isSelected())            alg = "HillClimbing";
        else if (RB_SimulatedAnnealing.isSelected()) alg = "SimulatedAnnealing";
        
        int nC = Integer.valueOf(Label_ValNumCentros.getText());
        int nG = Integer.valueOf(Label_ValNumGrupos.getText());
        int nH = Integer.valueOf(Label_ValNumHelis.getText());
        int EI = 1;
        if (RB_EstadoInicial1.isSelected())      EI = 1;
        else if (RB_EstadoInicial2.isSelected()) EI = 2;
        else if (RB_EstadoInicial3.isSelected()) EI = 3;
        int H = 1;
        if (RB_Heuristic1.isSelected())      H = 1;
        else if (RB_Heuristic2.isSelected()) H = 2;
        
        int S = 300000;
        int ST = 5000;
        int K = 5;
        double Lamb = 0.01;
        
        ArrayList<String> strings = new ArrayList<>();
        try {
             strings = practica.main2(alg, nC, nG, nH, EI, H, S, ST, K, Lamb);
        } catch (Exception ex) {
            System.out.println("No se ha podido inicializar el algoritmo de AIMA");
        }
        
        textIni.setText(strings.get(0));
        textFin.setText(strings.get(1));
        textEjec.setText(strings.get(2));
        
    }//GEN-LAST:event_button_GOActionPerformed
    
    public void inicializar(){
        this.setVisible(true);
        this.setFocusable(true);
        this.setEnabled(true);
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
    private javax.swing.JLabel Label_NumHelis1;
    private javax.swing.JLabel Label_NumHelis2;
    private javax.swing.JLabel Label_NumHelis3;
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
    private javax.swing.JButton button_GO;
    private javax.swing.JLayeredPane jLayeredPane1;
    private javax.swing.JLayeredPane jLayeredPane2;
    private javax.swing.JLayeredPane jLayeredPane3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTextArea textEjec;
    private javax.swing.JTextArea textFin;
    private javax.swing.JTextArea textIni;
    // End of variables declaration//GEN-END:variables
}
