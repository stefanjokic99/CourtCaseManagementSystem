package model.command.applicationCommands;

import model.DbResultSet;
import model.command.ApplicationCommand;
import view.Dialog;
import view.context.ContextModel;

public class ReportCommand extends ApplicationCommand{

	public ReportCommand(ContextModel contextModel) {
		super(contextModel);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void execute() {
		
		new Dialog(getContext());
	}

}
