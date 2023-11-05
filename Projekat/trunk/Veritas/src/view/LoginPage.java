package view;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.Insets;
import java.awt.Point;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

import model.command.OperationCommand;
import model.command.applicationCommands.LoginCommand;
import view.context.ContextModel;
import view.context.ContextView;
import view.viewComponents.form.Form;
import view.viewComponents.form.GridLayoutStrategy;
import view.viewComponents.form.SubmitButton;
import view.viewComponents.form.inputs.InputComponent;
import view.viewComponents.form.inputs.InputField;
import view.viewComponents.form.inputs.InputLabel;
import view.viewComponents.form.inputs.PasswordInputField;
import view.viewComponents.form.inputs.TextInputField;

public class LoginPage extends Window {

	private static final long serialVersionUID = 1L;

	// TODO: Postaviti panel koji se prikaze kada kredencijali nisu dobri...
	@SuppressWarnings("deprecation")
	public LoginPage(ContextModel contextModel, View view) {
		super(contextModel);
		addViewComponent(new Form());

		Dimension screenSize;
		Dimension frameSize;
		Point location;

		// Osnovna podÅ¡avanja
		setTitle("Veritas-Prijava");
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
		contentPane.setLayout(new GridLayout(1, 2));

		BufferedImage myPicture;
		try {
			myPicture = ImageIO.read(new File("icons/Pocetna.png"));
			JLabel picLabel = new JLabel(new ImageIcon(myPicture));
			contentPane.add(picLabel);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Form loginForm = (Form) getViewComponents().get(0);

		GridLayoutStrategy grStrategy = new GridLayoutStrategy(5, 1, 0, -(int) (0.65 * screenSize.height));
		loginForm.setLayout(grStrategy.getLayoutManager());
		loginForm.setBackground(Color.white);

		JLabel naslov = new JLabel("PRIJAVA");
		naslov.setBorder(new EmptyBorder(0, (int) (0.22 * screenSize.height), 0, 0));
		naslov.setForeground(Color.decode("#896d36"));
		naslov.setFont(new Font("Serif", Font.PLAIN, (int) (0.07 * screenSize.height)));
		loginForm.add(naslov);

		JLabel greska = new JLabel("Pogrešno korisničko ime ili lozinka");
		greska.setBorder(new EmptyBorder((int) (0.05 * screenSize.height), (int) (0.15 * screenSize.height), 0, 0));
		greska.setBounds((int) (0.5 * screenSize.width), 0, (int) (0.018 * screenSize.width),
				(int) (0.032 * screenSize.height));
		greska.setForeground(Color.RED);
		greska.setFont(new Font("Serif", Font.BOLD, (int) (0.03 * screenSize.height)));
		loginForm.add(greska);
		greska.hide();

		InputLabel usernameLabel = new InputLabel((int) (0.087 * screenSize.width), "Korisničko ime: ");
		usernameLabel.setFont(new Font("Serif", Font.PLAIN, (int) (0.02 * screenSize.height)));
		InputField usernameField = new TextInputField((int) (0.18 * screenSize.width), 20, "usernameField");
		InputComponent username = new InputComponent((int) (0.073 * screenSize.width), (int) (0.37 * screenSize.height),
				(int) (0.018 * screenSize.width), (int) (0.032 * screenSize.height), usernameField, usernameLabel);
		loginForm.addInput(username);
		loginForm.add(username);

		InputLabel passwordLabel = new InputLabel((int) (0.087 * screenSize.width), "Lozinka:");
		passwordLabel.setFont(new Font("Serif", Font.PLAIN, (int) (0.02 * screenSize.height)));
		InputField passwordField = new PasswordInputField((int) (0.18 * screenSize.width), 50, "passwordField");
		InputComponent password = new InputComponent((int) (0.073 * screenSize.width), (int) (0.37 * screenSize.height),
				(int) (0.014 * screenSize.width), (int) (0.032 * screenSize.height), passwordField, passwordLabel);
		loginForm.addInput(password);
		loginForm.add(password);

		SubmitButton loginButton = new SubmitButton("Prijavi se");
		JPanel buttonPanel = new JPanel(new GridBagLayout());
		GridBagConstraints gc = new GridBagConstraints();
		gc.fill = GridBagConstraints.HORIZONTAL;
		gc.gridx = 0;
		gc.gridy = 0;
		gc.insets = new Insets((int) (0.13 * screenSize.height), (int) (0.052 * screenSize.height), 0,
				(int) (0.04 * screenSize.height));
		buttonPanel.setBackground(Color.white);
		loginButton.setPreferredSize(new Dimension((int) (0.08 * screenSize.width), (int) (0.06 * screenSize.height)));
		loginForm.setSubmitButton(loginButton);

		loginButton.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				OperationCommand command = new LoginCommand(view.getApplicationModel(),
						((JTextField) usernameField.getComponent()).getText(),
						((JPasswordField) passwordField.getComponent()).getText());
				command.execute();
				if (view.getApplicationModel().getUserModel() != null) {
					setVisible(false);
					view.removeContextView(view.getContextViews().get(0));
					view.addContextView(new ContextView(new ContextModel(view.getApplicationModel().getDataModel(),
							view.getApplicationModel().getUserModel()), view));
				} else {
					greska.show();
					((JTextField) usernameField.getComponent()).setText("");
					((JPasswordField) passwordField.getComponent()).setText("");

				}
			}
		});

		buttonPanel.add(loginButton, gc);

		JButton cancel = new JButton("Odustani");
		gc.fill = GridBagConstraints.HORIZONTAL;
		gc.gridx = 1;
		gc.gridy = 0;
		gc.insets = new Insets((int) (0.13 * screenSize.height), 0, 0, (int) (0.04 * screenSize.height));
		cancel.setPreferredSize(new Dimension((int) (0.08 * screenSize.width), (int) (0.06 * screenSize.height)));
		cancel.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				((JTextField) usernameField.getComponent()).setText("");
				((JPasswordField) passwordField.getComponent()).setText("");
			}
		});
		buttonPanel.add(cancel, gc);

		loginForm.add(buttonPanel);

		contentPane.add(loginForm);
		contentPane.setBackground(Color.white);

		setVisible(true);

	}
}
