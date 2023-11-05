/***********************************************************************
 * Module:  Dialog.java
 * Author:  Notebook
 * Purpose: Defines the Class Dialog
 ***********************************************************************/

package view;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JLabel;
import javax.swing.table.TableModel;

import view.context.ContextModel;

public class Dialog extends Window {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ResultSetMetaData resultSetMetadata = null;
	private TableModel tableModel = null;
	
	public Dialog(ContextModel contextModel) {
		super(contextModel);
		
		contextModel.getDataModel().get(0).getResultSet().retrieveForReport();
		resultSetMetadata = contextModel.getDataModel().get(0).getResultSet().getRsmd();

		try {
			System.out.println(resultSetMetadata.getColumnCount());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Dimension screenSize;
		Dimension frameSize;
		
		// Osnovna podÅ¡avanja
		setTitle("Veritas-Izvještaj");
		setDefaultCloseOperation(HIDE_ON_CLOSE );

		// Podesavanja dimenzija i lokacije
		screenSize = new Dimension(400,350);
		frameSize = new Dimension(screenSize);

		setSize(frameSize);
		setLocationRelativeTo(null);
		setMinimumSize(screenSize);
		
		setResizable(false);
		

		// Postavljanje komponenti pogleda
		contentPane = getContentPane();
		contentPane.setLayout(new GridBagLayout());
		GridBagConstraints c = new GridBagConstraints();

	
		JButton btnPrintPriview = new JButton();
		btnPrintPriview.setBackground(Color.white);
		btnPrintPriview.setPreferredSize(new Dimension(35,35));
		btnPrintPriview.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/file.png")));
		btnPrintPriview.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				
			}
		});
		c.gridx = 2;
		c.gridy = 0;
		
		contentPane.add(btnPrintPriview, c);
		
		JLabel naslov = new JLabel("Odaberite polja za izvještaj");
		naslov.setFont(new Font("Serif", Font.PLAIN, 18));
		c.fill = GridBagConstraints.HORIZONTAL;
		c.gridx = 0;
		c.gridy = 0;
		c.ipadx = 0;
		c.weighty = 10;
		c.weightx = 0;
		c.insets = new Insets(0,0,0,100);
		naslov.setForeground(Color.decode("#896d36"));
		contentPane.add(naslov, c);

		try {
			for(int i = 0; i<resultSetMetadata.getColumnCount(); i++) {
				JCheckBox checkBox1 = new JCheckBox(resultSetMetadata.getColumnLabel(i+1));
			    checkBox1.setBackground(Color.white);
				c.fill = GridBagConstraints.HORIZONTAL;
				c.gridx = 0;
				c.weighty = 0;
				c.gridy = i+1;
				contentPane.add(checkBox1, c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		JButton btnSavePdf = new JButton("            Sačuvaj kao PDF");
		btnSavePdf.setBackground(Color.white);
		btnSavePdf.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/pdf.png")));
	
		c.fill = GridBagConstraints.HORIZONTAL;
		c.gridx = 0;
		try {
			c.gridy = resultSetMetadata.getColumnCount() + 1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		c.weighty = 50;
		contentPane.add(btnSavePdf, c);

		contentPane.setBackground(Color.white);

		setVisible(true);

	}

}