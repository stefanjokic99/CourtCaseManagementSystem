/***********************************************************************
 * Module:  Subject.java
 * Author:  Notebook
 * Purpose: Defines the Interface Subject
 ***********************************************************************/

package observer;

public interface Subject {
	void attach(Observer observer);
	void detach(Observer observer);
	void notifyObservers();
}