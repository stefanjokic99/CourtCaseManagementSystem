/***********************************************************************
 * Module:  MainClass.java
 * Author:  Korisnik
 * Purpose: Defines the Class MainClass
 ***********************************************************************/

package main;

import model.ApplicationModel;
import view.Dialog;
import view.LoginPage;
import view.MainPage;
import view.View;
import view.context.ContextModel;
import view.context.ContextView;
import view.viewComponents.ViewComponent;

public class MainClass {
	public static void main(String[] args) {

		ApplicationModel applicationModel = new ApplicationModel();
		View applicationView = new View(applicationModel);

		for (ContextView contextView : applicationView.getContextViews()) {
			for (ViewComponent viewComponent : contextView.getWindow().getViewComponents()) {
				applicationModel.attach(viewComponent);
			}
		}

		applicationModel.notifyObservers();
		/*
		ContextModel cm = new ContextModel(null, null);
		new Dialog(cm);
		*/
	}

}