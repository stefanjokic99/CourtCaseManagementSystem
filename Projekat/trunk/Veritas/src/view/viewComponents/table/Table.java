/***********************************************************************
 * Module:  Table.java
 * Author:  Notebook
 * Purpose: Defines the Class Table
 ***********************************************************************/

package view.viewComponents.table;

import java.awt.Dimension;

import javax.swing.DefaultListSelectionModel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.ListSelectionModel;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.table.TableModel;

import observer.Subject;
import view.context.ContextModel;

public class Table extends JScrollPane implements view.viewComponents.ViewComponent {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private JTable tabela = null;
	private JTable fiksnaTabela = null;
	private ListSelectionModel listSelectionModel = null;
	private TableModel tableModel = null;

	public Table(ContextModel contextModel) {
		tabela = new JTable() {
			private static final long serialVersionUID = 1L;

			@Override
			public void setRowSelectionInterval(int index0, int index1) {

				int rowCount = super.getRowCount();
				if (rowCount > 0) {
					if (index0 > (rowCount - 1)) {
						super.setRowSelectionInterval(rowCount - 1, rowCount - 1);
					} else if (index0 < 0) {
						super.setRowSelectionInterval(0, 0);
					} else {
						super.setRowSelectionInterval(index0, index1);
					}
				}
			}
		};

		tabela.setDefaultRenderer(Object.class, new CustomTableCellRenderer());
		tabela.setColumnSelectionAllowed(false);
		tabela.setRowSelectionAllowed(true);
		tabela.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		tabela.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);

		fiksnaTabela = new JTable() {
			private static final long serialVersionUID = 1L;

			@Override
			public void setRowSelectionInterval(int index0, int index1) {

				int rowCount = super.getRowCount();
				if (rowCount > 0) {
					if (index0 > (rowCount - 1)) {
						super.setRowSelectionInterval(rowCount - 1, rowCount - 1);
					} else if (index0 < 0) {
						super.setRowSelectionInterval(0, 0);
					} else {
						super.setRowSelectionInterval(index0, index1);
					}
				}
			}
		};
		fiksnaTabela.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

		setCorner(JScrollPane.UPPER_LEFT_CORNER, fiksnaTabela.getTableHeader());
		setRowHeaderView(fiksnaTabela);

		getRowHeader().setPreferredSize(new Dimension(20, getRowHeader().getPreferredSize().height));

		ListSelectionListener lsListener = new ListSelectionListener() {

			@Override
			public void valueChanged(ListSelectionEvent e) {
				int nr = ((DefaultListSelectionModel) e.getSource()).getAnchorSelectionIndex();

				if (nr == -1) {
					tabela.setRowSelectionInterval(tabela.getSelectedRow(), tabela.getSelectedRow());
					fiksnaTabela.setRowSelectionInterval(tabela.getSelectedRow(), tabela.getSelectedRow());

				} else {
					tabela.setRowSelectionInterval(nr, nr);
					fiksnaTabela.setRowSelectionInterval(nr, nr);
				}
			}

		};

		tabela.getSelectionModel().addListSelectionListener(lsListener);
		fiksnaTabela.getSelectionModel().addListSelectionListener(lsListener);

		setViewportView(tabela);
		setTableModel(new DatabaseTableModel(contextModel.getDataModel().get(0).getResultSet()));
	}

	public JTable getTabela() {
		return tabela;
	}

	public void setTabela(JTable tabela) {
		this.tabela = tabela;
	}

	public JTable getFiksnaTabela() {
		return fiksnaTabela;
	}

	public void setFiksnaTabela(JTable fiksnaTabela) {
		this.fiksnaTabela = fiksnaTabela;
	}

	public ListSelectionModel getListSelectionModel() {
		return listSelectionModel;
	}

	public void setListSelectionModel(ListSelectionModel listSelectionModel) {
		this.listSelectionModel = listSelectionModel;
	}

	public TableModel getTableModel() {
		return tableModel;
	}

	public void setTableModel(TableModel tableModel) {
		this.tabela.setModel(tableModel);
		this.fiksnaTabela.setModel(((DatabaseTableModel) tableModel).getFixedColumn());
		this.tableModel = tableModel;
		this.tabela.setRowSelectionInterval(0, 0);
	}

	@Override
	public void update(Subject subject) {
		// TODO Auto-generated method stub

	}

}
