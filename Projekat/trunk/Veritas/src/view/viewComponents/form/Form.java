/***********************************************************************
 * Module:  Form.java
 * Author:  Notebook
 * Purpose: Defines the Class Form
 ***********************************************************************/

package view.viewComponents.form;

import java.awt.Color;
import java.awt.LayoutManager;
import java.util.Vector;

import javax.swing.JPanel;

import observer.Subject;
import view.viewComponents.ViewComponent;
import view.viewComponents.form.inputs.Input;
import view.viewComponents.form.inputs.InputField;

public class Form extends JPanel implements ViewComponent {
    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private LayoutStrategy layout;
    private SubmitButton submitButton;
    private java.util.Collection<Input> inputs;

    public Form() {
        this.inputs = new Vector<Input>();
        this.layout = new FlowLayoutStrategy();
        setBackground(Color.white);
    }

    public Form(LayoutStrategy layoutStrategy, Vector<InputField> inputs) {
		this.layout = layoutStrategy;
        //inputs.forEach(input -> add(input));
		setBackground(Color.white);
    }

    public LayoutManager getLayout() {
        return layout.getLayoutManager();
    }

    public void setLayout(LayoutStrategy layout) {
        this.layout = layout;
    }


    public SubmitButton getSubmitButton() {
        return submitButton;
    }


    public void setSubmitButton(SubmitButton submitButton) {
        this.submitButton = submitButton;
    }


    public java.util.Collection<Input> getInputs() {
        return inputs;
    }

    public void addInput(Input input) {
        inputs.add(input);
    }


    @Override
    public void update(Subject subject) {
        // TODO Auto-generated method stub

    }

}
