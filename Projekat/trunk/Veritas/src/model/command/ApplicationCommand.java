/***********************************************************************
 * Module:  ApplicationCommand.java
 * Author:  Notebook
 * Purpose: Defines the Class ApplicationCommand
 ***********************************************************************/

package model.command;

import view.context.ContextModel;

public abstract class ApplicationCommand extends Command {
	ContextModel contextModel;

	public ApplicationCommand(ContextModel contextModel) {
		this.contextModel = contextModel;
	}

	public ContextModel getContext() {
		return contextModel;
	}

	public void setContext(ContextModel contextModel) {
		this.contextModel = contextModel;
	}

	public abstract void execute();
}