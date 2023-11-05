package view.viewComponents.form.formFactory;

import model.databaseModel.ColumnModel;
import view.viewComponents.form.Form;
import view.viewComponents.form.GridLayoutStrategy;
import view.viewComponents.form.inputs.Input;
import view.viewComponents.form.inputs.InputField;
import view.viewComponents.form.inputs.inputFactory.ColumnInputWithLabelFactory;

import java.util.Vector;

public class InputFormFactory implements FormFactory{

    @Override
    public Form createForm(Vector<ColumnModel> columns) {

        int rowNumber = columns.size() / 2;
        int colNumber = 2;

        Vector<InputField> inputs = new Vector<>();

        columns.forEach(column -> {
            inputs.add(new ColumnInputWithLabelFactory().createInput(column));
        });

        return new Form(new GridLayoutStrategy(rowNumber, colNumber, 5, 5), inputs);
    }
}
