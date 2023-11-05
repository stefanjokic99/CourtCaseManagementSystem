/***********************************************************************
 * Module:  View.java
 * Author:  Notebook
 * Purpose: Defines the Class View
 ***********************************************************************/

package view;

import java.util.Vector;

import model.ApplicationModel;
import model.command.operationCommands.CloseApplicationCommand;
import view.context.ContextModel;
import view.context.ContextView;
import view.viewComponents.menu.MenuBar;

public class View {
	private ApplicationModel applicationModel;
	private Vector<ContextView> contextViews;
	private ContextModel contextModel;

	public MenuBar menuBar;

	public ApplicationModel getApplicationModel() {
		return applicationModel;
	}

	public Vector<ContextView> getContextViews() {
		return contextViews;
	}

	public View(ApplicationModel applicationModel) {
		this.applicationModel = applicationModel;

		this.contextModel = new ContextModel(applicationModel.getDataModel(), applicationModel.getUserModel());
		this.contextViews = new Vector<ContextView>();
		contextViews.add(new ContextView(contextModel, this));

		for (ContextView contextView : this.contextViews) {
			Window window = contextView.getWindow();
			if (window.getClass().getName() == Frame.class.getName()) {
				window.setCloseCommandOnListener(new CloseApplicationCommand(applicationModel));
			}
		}

	}

	public void addContextView(ContextView conView) {
		contextViews.add(conView);
		for (ContextView contextView : this.contextViews) {
			Window window = contextView.getWindow();
			if (window.getClass().getName() == Frame.class.getName()) {
				window.setCloseCommandOnListener(new CloseApplicationCommand(applicationModel));
			}
		}
	}

	public void removeContextView(ContextView contextView) {
		contextViews.remove(contextView);
	}

}