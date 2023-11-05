package view.viewComponents.form.inputs.inputFactory;

import model.databaseModel.ColumnModel;
import view.viewComponents.form.inputs.InputField;

public interface InputFromColumnFactory {
    public InputField createInput(ColumnModel columnModel);
}
