/***********************************************************************
 * Module:  XMLModel.java
 * Author:  Notebook
 * Purpose: Defines the Class XMLModel
 ***********************************************************************/

package model;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpression;

import org.w3c.dom.Document;

import model.databaseAccess.DBConfiguration;
import model.databaseModel.PackageModel;
import model.databaseModel.TableModel;
import model.databaseModel.TreeElement;
import model.parser.DOMParser;

public class XMLModel {

	private Document document = null; // Referenca na DOM stablo isparsiranog xml dokumenta.
	private XPathExpression expression = null; // Xpath izraz, koji se prevodi u putanju.
	private XPath xpath = null;// Xpath putanja.
	private TreeElement rootPaket;
	private DBConfiguration dbConfiguration;

	public Document getDocument() {
		return document;
	}

	public void setDocument(Document document) {
		this.document = document;
	}

	public XPathExpression getExpression() {
		return expression;
	}

	public void setExpression(XPathExpression expression) {
		this.expression = expression;
	}

	public XPath getXpath() {
		return xpath;
	}

	public void setXpath(XPath xpath) {
		this.xpath = xpath;
	}

	public TreeElement getRootPaket() {
		return rootPaket;
	}

	public void setRootPaket(TreeElement rootPaket) {
		this.rootPaket = rootPaket;
	}

	public DBConfiguration getDbConfiguration() {
		return dbConfiguration;
	}

	public void setDbConfiguration(DBConfiguration dbConfiguration) {
		this.dbConfiguration = dbConfiguration;
	}

	public XMLModel(String location) {
		new DOMParser().parseXMLModel(location, this);
	}

	// TODO: Napisati kao rekurzivnu funkciju
	public TreeElement getElementsByTableName(String tablename) {
		TreeElement table = null;

		for (TreeElement packageName : rootPaket.getAllElemente()) {
			for (TreeElement elements : packageName.getAllElemente()) {
				if (elements.getClass() == TableModel.class) {
					if (tablename.equals(elements.getNaziv())) {
						return elements;
					}
				}
				if (elements.getClass() == PackageModel.class) {
					for (TreeElement element : elements.getAllElemente()) {
						if (element.getClass() == TableModel.class) {
							if (tablename.equals(element.getNaziv())) {
								return element;
							}
						}
					}
				}
			}

		}
		return table;
	}

}