package view.viewComponents.toolbar;

import java.awt.Color;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Vector;

import javax.swing.AbstractButton;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JToolBar;

import model.command.applicationCommands.LogoutCommand;
import model.command.applicationCommands.ReportCommand;
import observer.Subject;
import view.Frame;
import view.View;
import view.context.ContextModel;
import view.context.ContextView;
import view.viewComponents.ViewComponent;

public class Toolbar extends JToolBar implements ViewComponent {
	private static final long serialVersionUID = 1L;

	private Vector<AbstractButton> buttons = new Vector<>();

	public Toolbar(ContextModel contextModel, View view) {

		setRollover(true);
		setBorderPainted(true);
		setFloatable(true);
		setBackground(Color.WHITE);

		JButton create = new JButton();
		create.setSize(24, 24);
		create.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/table_row_insert.png")
				.getScaledInstance(20, 20, Image.SCALE_AREA_AVERAGING)));
		create.setToolTipText("Novi zapis");
		create.setActionCommand("create");
		create.setBackground(Color.white);

		JButton update = new JButton();
		update.setSize(24, 24);
		update.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/table_edit.png")
				.getScaledInstance(20, 20, Image.SCALE_AREA_AVERAGING)));
		update.setToolTipText("Ažuriraj zapis");
		update.setActionCommand("update");
		update.setBackground(Color.white);

		JButton delete = new JButton();
		delete.setSize(24, 24);
		delete.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/table_row_delete.png")
				.getScaledInstance(20, 20, Image.SCALE_AREA_AVERAGING)));
		delete.setToolTipText("Izbrisati zapis");
		delete.setActionCommand("delete");
		delete.setBackground(Color.white);

		JButton first = new JButton();
		first.setSize(24, 24);
		first.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/First.png")
				.getScaledInstance(20, 20, Image.SCALE_AREA_AVERAGING)));
		first.setToolTipText("Prvi zapis");
		first.setActionCommand("first");
		first.setBackground(Color.white);

		JButton prev = new JButton();
		prev.setSize(24, 24);
		prev.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/Prev.png").getScaledInstance(20,
				20, Image.SCALE_AREA_AVERAGING)));
		prev.setToolTipText("Prethodni zapis");
		prev.setActionCommand("prev");
		prev.setBackground(Color.white);

		JButton next = new JButton();
		next.setSize(24, 24);
		next.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/Next.png").getScaledInstance(20,
				20, Image.SCALE_AREA_AVERAGING)));
		next.setToolTipText("Sledeći zapis");
		next.setActionCommand("next");
		next.setBackground(Color.white);

		JButton last = new JButton();
		last.setSize(24, 24);
		last.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/Last.png").getScaledInstance(20,
				20, Image.SCALE_AREA_AVERAGING)));
		last.setToolTipText("Poslednji zapis");
		last.setActionCommand("last");
		last.setBackground(Color.white);

		JButton accept = new JButton();
		accept.setSize(24, 24);
		accept.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/tick-mark (1).png")
				.getScaledInstance(20, 20, Image.SCALE_AREA_AVERAGING)));
		accept.setToolTipText("Prihvati");
		accept.setActionCommand("accept");
		accept.setBackground(Color.white);

		JButton cancel = new JButton();
		cancel.setSize(24, 24);
		cancel.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/multiply (1).png")
				.getScaledInstance(20, 20, Image.SCALE_AREA_AVERAGING)));
		cancel.setToolTipText("Odustani");
		cancel.setActionCommand("cancel");
		cancel.setBackground(Color.white);

		JButton report = new JButton();
		report.setSize(24, 24);
		report.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/call-report-icon-3.png")
				.getScaledInstance(20, 20, Image.SCALE_AREA_AVERAGING)));
		report.setToolTipText("Izvještaj");
		report.setActionCommand("report");
		report.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				ReportCommand rcmd = new ReportCommand(contextModel);
				rcmd.execute();
				
			}
		});
		report.setBackground(Color.white);

		JButton logOut = new JButton();
		logOut.setSize(24, 24);
		logOut.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/logout-icon.png")
				.getScaledInstance(20, 20, Image.SCALE_AREA_AVERAGING)));
		logOut.setToolTipText("Odjavi se");
		logOut.setActionCommand("logOut");
		logOut.setBackground(Color.white);
		logOut.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				new LogoutCommand(view.getApplicationModel()).execute();

				for(ContextView contextView: view.getContextViews()) {
					contextView.getWindow().setVisible(false);
				}
				view.getContextViews().removeAllElements();
				view.getContextViews().add(new ContextView(new ContextModel(view.getApplicationModel().getDataModel(),
						view.getApplicationModel().getUserModel()), view));
			}
		});

		JButton profile = new JButton();
		profile.setSize(24, 24);
		profile.setIcon(new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/profile-icon.png")
				.getScaledInstance(20, 20, Image.SCALE_AREA_AVERAGING)));
		profile.setToolTipText("Profil");
		profile.setActionCommand("profile");
		profile.setBackground(Color.white);

		add(create);
		add(update);
		add(delete);
		addSeparator();
		add(first);
		add(prev);
		add(next);
		add(last);
		addSeparator();
		add(accept);
		add(cancel);
		addSeparator();
		add(report);

		add(Box.createHorizontalGlue());
		add(profile);
		addSeparator();
		add(logOut);

		buttons.add(create);
		buttons.add(update);
		buttons.add(delete);
		buttons.add(create);
		buttons.add(first);
		buttons.add(prev);
		buttons.add(next);
		buttons.add(last);
		buttons.add(accept);
		buttons.add(cancel);
		buttons.add(report);
		buttons.add(logOut);
		buttons.add(profile);

	}

	public Vector<AbstractButton> getButtons() {
		return buttons;
	}

	public void setButtons(Vector<AbstractButton> buttons) {
		this.buttons = buttons;
	}

	@Override
	public void update(Subject subject) {

	}

}
