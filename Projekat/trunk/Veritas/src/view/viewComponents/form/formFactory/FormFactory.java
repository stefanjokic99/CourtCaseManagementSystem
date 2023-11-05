package view.viewComponents.form.formFactory;

import model.databaseModel.ColumnModel;
import view.viewComponents.form.Form;

import java.util.Vector;

public interface FormFactory {
    public Form createForm(Vector<ColumnModel> columns);
}
