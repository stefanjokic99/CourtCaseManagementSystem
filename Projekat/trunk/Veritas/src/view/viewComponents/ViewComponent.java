/***********************************************************************
 * Module:  ViewComponent.java
 * Author:  Notebook
 * Purpose: Defines the Interface ViewComponent
 ***********************************************************************/

package view.viewComponents;

import observer.Subject;

public interface ViewComponent extends observer.Observer {

	void update(Subject subject);
}