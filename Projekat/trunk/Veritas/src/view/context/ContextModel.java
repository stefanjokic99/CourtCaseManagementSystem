/***********************************************************************
 * Module:  ContextModel.java
 * Author:  Notebook
 * Purpose: Defines the Class ContextModel
 ***********************************************************************/

package view.context;

import java.util.Vector;

import model.DataModel;
import model.UserModel;
import view.context.contextState.ContextState;

public class  ContextModel {
	private ContextState contextState;
	private java.util.Vector<DataModel> dataModel;
	private UserModel userModel;

	public UserModel getUserModel() {
		return userModel;
	}

	public void setUserModel(UserModel userModel) {
		this.userModel = userModel;
	}

	public ContextModel(DataModel dataModel, UserModel userModel) {
		this.dataModel = new Vector<DataModel>();
		this.dataModel.add(dataModel);
		this.userModel = userModel;
	}

	public java.util.Vector<DataModel> getDataModel() {
		if (dataModel == null)
			dataModel = new java.util.Vector<DataModel>();
		return dataModel;
	}

	public ContextState getContextState() {
		return contextState;
	}

	public void setContextState(ContextState newContextState) {
		contextState = newContextState;
	}

}
