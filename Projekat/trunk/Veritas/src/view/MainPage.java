package view;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.util.Vector;

import javax.swing.BorderFactory;
import javax.swing.JLabel;
import javax.swing.JPanel;

import model.databaseModel.ColumnModel;
import model.databaseModel.TableModel;
import model.databaseModel.TreeElement;
import net.sf.jasperreports.components.table.Column;
import observer.Subject;
import view.context.ContextModel;
import view.viewComponents.ViewComponent;
import view.viewComponents.form.Form;
import view.viewComponents.form.GridLayoutStrategy;
import view.viewComponents.form.formFactory.InputFormFactory;
import view.viewComponents.table.Table;

public class MainPage extends JPanel implements ViewComponent {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	private ContextModel contextModel;
	private Table table;
	private Form inputForm;

	public ContextModel getContextModel() {
		return this.contextModel;
	}

	public MainPage(ContextModel contextModel) {
		Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
		setLayout(new BorderLayout());
		setBackground(Color.white);

		JLabel message = new JLabel("Dobrodošli " + contextModel.getUserModel().getForename() + " "
				+ contextModel.getUserModel().getSurname() + "!");
		message.setFont(new Font("Serif", Font.BOLD, (int) (0.01 * screenSize.height)));

		add(message, BorderLayout.NORTH);

		Vector<ColumnModel> columns = new Vector<>();
		columns.add(new ColumnModel("Broj predmeta", false, true, "int"));
		columns.add(new ColumnModel("Godina pocetka predmeta", false, false, "int"));
		columns.add(new ColumnModel("Naziv", false, false, "string"));
		columns.add(new ColumnModel("Opis", false, false, "string"));
		columns.add(new ColumnModel("Pravni osnov", false, false, "string"));
		columns.add(new ColumnModel("Napomena", false, false, "string"));

		inputForm = new InputFormFactory().createForm(columns);

		table = new Table(contextModel);
		add(table, BorderLayout.CENTER);
		this.contextModel = contextModel;
	}

	public void refreshPage() {
		remove(table);
		contextModel.getDataModel().get(0).getResultSet().retrieveAll();
		table = new Table(contextModel);
		add(table, BorderLayout.CENTER);
		updateUI();
	}

	@Override
	public void update(Subject subject) {
		// TODO Auto-generated method stub

	}
}
