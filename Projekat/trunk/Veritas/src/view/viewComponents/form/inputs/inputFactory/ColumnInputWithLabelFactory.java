package view.viewComponents.form.inputs.inputFactory;

import model.databaseModel.ColumnModel;
import view.viewComponents.form.inputs.*;

import java.awt.*;

public class ColumnInputWithLabelFactory implements InputFromColumnFactory {
    @Override
    public InputField createInput(ColumnModel columnModel) {

        InputLabel label = new InputLabel(100, getLabelName(columnModel.getName(), columnModel.isNullable()));
        label.setFont(new Font("Serif", Font.PLAIN, 12));
        InputField inputField = new TextInputField(100, 20, columnModel.getName());
        /*InputComponent inputComponent = new InputComponent(100, 20,
                (int) (0.018 * screenSize.width), (int) (0.032 * screenSize.height), usernameField, usernameLabel);
        */

        return inputField;
    }

    private String getLabelName(String name, Boolean isNullable){
        return name + (isNullable ? "" : "*") + ": ";
    }
}
