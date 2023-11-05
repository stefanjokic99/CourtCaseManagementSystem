/***********************************************************************
 * Module:  ApplicationBrowser.java
 * Author:  Notebook
 * Purpose: Defines the Class ApplicationBrowser
 ***********************************************************************/

package view.viewComponents.applicationBrowser;

import java.awt.Dimension;

import javax.swing.JScrollPane;
import observer.Subject;
import view.MainPage;
import view.context.ContextModel;

public class ApplicationBrowser extends JScrollPane implements view.viewComponents.ViewComponent {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public ApplicationBrowser(ContextModel contextModel, MainPage mainPage) {
		super(new ApplicationBrowserTree(
				new ApplicationBrowserTreeModel(null, contextModel.getDataModel().get(0).getXmlModel()), mainPage));
		setPreferredSize(new Dimension(300,0));
	}

	@Override
	public void update(Subject subject) {
		// TODO Auto-generated method stub

	}

}