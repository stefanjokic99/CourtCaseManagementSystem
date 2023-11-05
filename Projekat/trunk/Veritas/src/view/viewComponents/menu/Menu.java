package view.viewComponents.menu;

import java.util.List;
import java.util.Vector;

import javax.swing.JMenu;

import observer.Subject;
import view.context.ContextModel;
import view.viewComponents.ViewComponent;

public class Menu extends JMenu implements ViewComponent {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ContextModel contextModel;

	private List<MenuItem> menuItems = new Vector<MenuItem>();
	private List<Menu> menus = new Vector<Menu>();

	public Menu(String text) {
		super();
		this.setText(text);
	}

	public Menu(String text, ContextModel contextModel) {
		this(text);
		this.contextModel = contextModel;
	}

	public void setContextModel(ContextModel contextModel) {
		this.contextModel = contextModel;
	}

	public Menu addMenuItem(MenuItem menuItem) {
		menuItem.setContextModel(contextModel);
		menuItems.add(menuItem);
		add(menuItem);
		
		return this;
	}

	public Menu addMenu(Menu menu) {
		menu.setContextModel(contextModel);
		menus.add(menu);
		add(menu);

		return this;
	}

	@Override
	public void update(Subject subject) {
		menuItems.forEach(menuItem -> menuItem.update(subject));
		menus.forEach(menu -> menu.update(subject));
	}

}
