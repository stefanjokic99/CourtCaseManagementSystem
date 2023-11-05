/***********************************************************************
 * Module:  DataModel.java
 * Author:  Notebook
 * Purpose: Defines the Class DataModel
 ***********************************************************************/

package model;

public class DataModel {
	private DbResultSet resultSet;
	private XMLModel xmlModel;

	public DataModel(DbResultSet resultSet, XMLModel xmlModel) {
		super();
		this.resultSet = resultSet;
		this.xmlModel = xmlModel;
	}

	public DbResultSet getResultSet() {
		return resultSet;
	}

	public void setResultSet(DbResultSet resultSet) {
		this.resultSet = resultSet;
	}

	public XMLModel getXmlModel() {
		return xmlModel;
	}

	public void setXmlModel(XMLModel xmlModel) {
		this.xmlModel = xmlModel;
	}

}