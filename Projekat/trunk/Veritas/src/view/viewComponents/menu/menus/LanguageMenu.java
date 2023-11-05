package view.viewComponents.menu.menus;

import java.awt.Image;

import javax.swing.ImageIcon;

import view.context.ContextModel;
import view.viewComponents.menu.Menu;
import view.viewComponents.menu.MenuItem;

public class LanguageMenu extends Menu {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	public LanguageMenu(ContextModel contextModel) {
		super("Jezik", contextModel);
		
		MenuItem serbian = new MenuItem("Srpski", contextModel);
		serbian.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/language.png").getScaledInstance(24, 24, Image.SCALE_AREA_AVERAGING)));		
		addMenuItem(serbian);
		
		MenuItem bosnian = new MenuItem("Bošnjački", contextModel);
		bosnian.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/language.png").getScaledInstance(24, 24, Image.SCALE_AREA_AVERAGING)));		
		addMenuItem(bosnian);
		
		MenuItem croatian = new MenuItem("Hrvatski", contextModel);
		croatian.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/language.png").getScaledInstance(24, 24, Image.SCALE_AREA_AVERAGING)));		
		addMenuItem(croatian);
			
	}

}
