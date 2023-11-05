package view.viewComponents.applicationBrowser;

import java.awt.Dimension;

import javax.swing.BorderFactory;
import javax.swing.JTree;

import observer.Subject;
import view.MainPage;
import view.viewComponents.ViewComponent;

public class ApplicationBrowserTree extends JTree implements ViewComponent {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public ApplicationBrowserTree(ApplicationBrowserTreeModel xmlTreeModel, MainPage mainPage) {
		super(xmlTreeModel);
		setBorder(BorderFactory.createEmptyBorder(5, 0, 10, 20));
		setRootVisible(false);
		setShowsRootHandles(true);
		this.setCellRenderer(new ApplicationBrowserCellRender());
		new ApplicationBrowserListener(xmlTreeModel, this, mainPage);
	}

	@Override
	public void update(Subject subject) {
		// TODO Auto-generated method stub

	}

}
