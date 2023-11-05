/***********************************************************************
 * Module:  SubmitButton.java
 * Author:  Notebook
 * Purpose: Defines the Class SubmitButton
 ***********************************************************************/

package view.viewComponents.form;

import javax.swing.JButton;

public class SubmitButton extends JButton {

	private static final long serialVersionUID = 1L;

	public SubmitButton(String name) {
		setText(name);
	}
}