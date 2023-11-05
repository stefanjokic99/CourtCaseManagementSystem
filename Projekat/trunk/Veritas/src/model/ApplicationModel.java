/***********************************************************************
 * Module:  ApplicationModel.java
 * Author:  Notebook
 * Purpose: Defines the Class ApplicationModel
 ***********************************************************************/

package model;

import java.util.Vector;

import model.parser.SAXParser;
import model.state.ApplicationState;
import model.state.IdleState;
import observer.Observer;

public class ApplicationModel implements observer.Subject {
	private ApplicationState applicationState;

	private DataModel dataModel;
	private XMLModel xmlModel;
	private UserModel userModel;
	private java.util.Vector<Observer> observers;

	public ApplicationState getApplicationState() {
		return applicationState;
	}

	public void setApplicationState(ApplicationState newApplicationState) {
		applicationState = newApplicationState;
	}

	public DataModel getDataModel() {
		return dataModel;
	}
	
	public void setDataModel(DataModel dataModel) {
		this.dataModel = dataModel;
	}

	public UserModel getUserModel() {
		return userModel;
	}

	public void setUserModel(UserModel userModel) {
		this.userModel = userModel;
	}

	public ApplicationModel() {
		this.applicationState = new IdleState();
		this.xmlModel = new XMLModel("resources/Veritas.xml");
		this.dataModel = new DataModel(new DbResultSet(xmlModel.getDbConfiguration()), xmlModel);
		this.observers = new Vector<Observer>();
	}

	@Override
	public void attach(Observer observer) {
		observers.add(observer);
	}

	@Override
	public void detach(Observer observer) {
		observers.remove(observer);
	}

	@Override
	public void notifyObservers() {
		for (Observer observer : observers) {
			observer.update(this);
		}
	}

}