/***********************************************************************
 * Module:  InputLabel.java
 * Author:  Notebook
 * Purpose: Defines the Class InputLabel
 ***********************************************************************/

package view.viewComponents.form.inputs;

import javax.swing.JLabel;

public class InputLabel extends JLabel{
	private static final long serialVersionUID = 1L;
	int width;
	
	public InputLabel(int width, String label) {
		this.setText(label);
		this.width = width;
	}
	
	public void setStartPosition(int x, int y, int height) {
		this.setBounds(x, y,width,height);

	}
}