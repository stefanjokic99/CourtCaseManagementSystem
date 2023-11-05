package view;

import java.util.Vector;
import java.awt.Container;
import java.awt.Image;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.JFrame;

import model.command.Command;
import view.context.ContextModel;
import view.viewComponents.ViewComponent;
import view.viewComponents.applicationBrowser.ApplicationBrowser;
import view.viewComponents.form.Form;
import view.viewComponents.menu.MenuBar;
import view.viewComponents.statusBar.StatusBar;
import view.viewComponents.toolbar.Toolbar;

/**
 * Apstraktna klasa koja definiše osnovne elemete potrebne za kreiranje osnovnog
 * izgleda aplikacije.
 **/
public abstract class Window extends JFrame {

	private static final long serialVersionUID = 1L;
	protected Container contentPane = null;
	private Vector<ViewComponent> viewComponents;

	public Vector<ViewComponent> getViewComponents() {
		return viewComponents;
	}

	public void addViewComponent(ViewComponent viewComponent) {
		viewComponents.add(viewComponent);
	}

	public void removeViewComponent(ViewComponent viewComponent) {
		viewComponents.remove(viewComponent);
	}

	public Container getContent() {
		return contentPane;
	}

	public void setContent(Container cp) {
		this.contentPane = cp;
	}

	public Window(ContextModel contextModel) {
		// Podesavanja ikonice
		Image icon = java.awt.Toolkit.getDefaultToolkit().getImage("icons/V.png").getScaledInstance(600, 600, Image.SCALE_SMOOTH);
		viewComponents = new Vector<ViewComponent>();
		setIconImage(icon);
	}

	public void setCloseCommandOnListener(Command command) {
		this.addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				StatusBar.terminateTimerThread();
				command.execute();
				StatusBar.startTimerThread();

			}
		});
	}
}