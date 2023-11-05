/***********************************************************************
 * Module:  FlowLayoutStrategy.java
 * Author:  Notebook
 * Purpose: Defines the Class FlowLayoutStrategy
 ***********************************************************************/

package view.viewComponents.form;

import java.awt.FlowLayout;

public class FlowLayoutStrategy extends LayoutStrategy {

	public FlowLayoutStrategy() {
		this.layoutManager =  new FlowLayout();
	}
	
}