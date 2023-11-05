package model.command.operationCommands;

import javax.swing.JOptionPane;

import model.ApplicationModel;
import model.command.OperationCommand;

/**
 * 
 * Klasa koja realizuje zatvaranje aplikacije
 *
 */
public class CloseApplicationCommand extends OperationCommand {

	public CloseApplicationCommand(ApplicationModel applicationModel) {
		super(applicationModel);
	}

	public void execute() {

		String answers[] = { "Da", "Odustani" };
		int exit = JOptionPane.showOptionDialog(null, "Da li želite izlazak iz Veritas a?", "Veritas", JOptionPane.YES_NO_OPTION,
				JOptionPane.WARNING_MESSAGE, null, answers, null);
		
		if (exit == JOptionPane.YES_OPTION) {
			System.exit(0);
		}
	}

}