
package view;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.Point;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.JFrame;
import javax.swing.JMenuBar;

import model.command.operationCommands.CloseApplicationCommand;
import view.context.ContextModel;
import view.viewComponents.ViewComponent;
import view.viewComponents.applicationBrowser.ApplicationBrowser;
import view.viewComponents.form.Form;
import view.viewComponents.statusBar.StatusBar;
import view.viewComponents.toolbar.Toolbar;
import view.viewComponents.menu.MenuBar;

/** Klasa koja definiše osnovni izgled prozora **/
public class Frame extends Window {

	private static final long serialVersionUID = 1L;
	/** Kontejner na koji se postavlja **/
	private Container contentPane = null;

	public Frame(ContextModel contextModel, View view) {
		super(contextModel);

		Dimension screenSize;
		Dimension frameSize;
		Point location;

		// Osnovna podšavanja
		setTitle("Veritas");
		setDefaultCloseOperation(EXIT_ON_CLOSE);

		// Podesavanja dimenzija i lokacije
		screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
		frameSize = new Dimension(screenSize);
		setExtendedState(JFrame.MAXIMIZED_BOTH);

		// setSize(frameSize);

		location = new Point((screenSize.width - frameSize.width) / 2, (screenSize.height - frameSize.height) / 2);
		setLocation(location);
		setMinimumSize(screenSize);

		// Postavljanje komponenti pogleda
		contentPane = getContentPane();
		contentPane.setBackground(Color.white);
		contentPane.setLayout(new BorderLayout());

		addViewComponent(new MenuBar(contextModel));
		addViewComponent(new Toolbar(contextModel, view));
		addViewComponent(new StatusBar());
		addViewComponent(new MainPage(contextModel));
		addViewComponent(new ApplicationBrowser(contextModel, (MainPage)getViewComponents().lastElement()));

		for (ViewComponent viewComponent : getViewComponents()) {
			if (viewComponent.getClass().getName() == StatusBar.class.getName()) {
				contentPane.add(((StatusBar) viewComponent), BorderLayout.SOUTH);
			} else if (viewComponent.getClass().getName() == MenuBar.class.getName()) {
				setJMenuBar((JMenuBar) viewComponent);
			} else if (viewComponent.getClass().getName() == Toolbar.class.getName()) {
				contentPane.add(((Toolbar) viewComponent), BorderLayout.NORTH);
			} else if (viewComponent.getClass().getName() == ApplicationBrowser.class.getName()) {
				//((ApplicationBrowser) viewComponent).setPreferredSize(new Dimension(300,0));
				contentPane.add(((ApplicationBrowser) viewComponent), BorderLayout.WEST);
			} else if (viewComponent.getClass().getName() == MainPage.class.getName()) {
				contentPane.add(((MainPage) viewComponent), BorderLayout.CENTER);
			}
		}

		setVisible(true);
	}

}