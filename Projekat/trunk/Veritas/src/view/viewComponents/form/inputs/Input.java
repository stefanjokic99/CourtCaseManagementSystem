/***********************************************************************
 * Module:  Input.java
 * Author:  Notebook
 * Purpose: Defines the Class Input
 ***********************************************************************/

package view.viewComponents.form.inputs;

import java.awt.Component;
import java.awt.Rectangle;

public interface Input {
	public Rectangle getBounds();
	public Component getComponent();
	public InputField getInputField();
	public InputLabel getInputLabel();

}