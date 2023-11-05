package model.command.applicationCommands;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.SQLException;

import model.ApplicationModel;
import model.DbResultSet;
import model.UserModel;
import model.XMLModel;
import model.command.OperationCommand;
import model.databaseModel.TableModel;

public class LoginCommand extends OperationCommand {
	private String username;
	private String password;

	public LoginCommand(ApplicationModel applicationModel, String username, String password) {
		super(applicationModel);
		this.username = username;
		this.password = password;
	}

	@Override
	public void execute() {
		// naci korisnika sa tim kredencijalima i upisati u user model
		// Vector<DataModel> db = super.getApplication().getDataModel();
		// Iz xml modela dohvatiti crud

		XMLModel xmlModel = super.getApplication().getDataModel().getXmlModel();
		TableModel table = (TableModel) xmlModel.getElementsByTableName("Korisnički nalog");

		DbResultSet dbResultSet = new DbResultSet(xmlModel.getDbConfiguration(), table.getCrudOperation());
		dbResultSet.retrieveWhere(new String[] { "username", "password" }, new String[] { username, password });

		// dbResultSet.getRs();
		// Procitati ime i prezime i rolu user-a

		try {
			if (dbResultSet.getRs().next()) {
				UserModel userModel = new UserModel(dbResultSet, dbResultSet.getRs().getString("Oznaka_Drzave"),
						dbResultSet.getRs().getString("Identifikator_PS"), dbResultSet.getRs().getString("UserId"),
						dbResultSet.getRs().getString("Ime"), dbResultSet.getRs().getString("Prezime"), null);
				super.getApplication().setUserModel(userModel);

				TableModel tableAccessLog = (TableModel) xmlModel.getElementsByTableName("Logovi pristupa");
				DbResultSet dbResultSetAccessLog = new DbResultSet(xmlModel.getDbConfiguration(),
						tableAccessLog.getCrudOperation());

				InetAddress ipObj = InetAddress.getLocalHost();

				dbResultSetAccessLog.insert(new String[] { "drzava", "oznaka_ps", "user_id", "ip" },
						new String[] { userModel.getOznakaDrzave(), userModel.getOznakaPS(), userModel.getUserId(),
								ipObj.getHostAddress() });
				TableModel tablePredmet = (TableModel) xmlModel.getElementsByTableName("Predmet");
				super.getApplication().getDataModel().setResultSet(new DbResultSet(xmlModel.getDbConfiguration(), tablePredmet.getCrudOperation(), "Predmet"));
				super.getApplication().getDataModel().getResultSet().retrieveAll();
			}
		} catch (SQLException | UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// System.out.println(dbResultSet.getRs());
	}

}
