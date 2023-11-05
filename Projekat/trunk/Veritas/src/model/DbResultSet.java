/***********************************************************************
 * Module:  ResultSet.java
 * Author:  Notebook
 * Purpose: Defines the Class ResultSet
 ***********************************************************************/

package model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import javax.swing.JOptionPane;

import com.microsoft.sqlserver.jdbc.SQLServerResultSet;

import model.databaseAccess.DBConfiguration;
import model.databaseAccess.DBManipulation;
import model.databaseModel.CRUDOperationModel;

public class DbResultSet {

    DBManipulation DBM = null;
    Connection conn = null;

    CRUDOperationModel crud = null;

    Statement stmt = null;
    PreparedStatement prepStmt = null;
    CallableStatement procStmt = null;

    ResultSet rs = null;
    ResultSetMetaData rsmd = null;

    Vector<Integer> redniBrojevi = new Vector<>();
    Vector<Object> editableCells = new Vector<>();

    private String tableName;

    public String getTableName() {
        return tableName;
    }

    public DbResultSet(DBConfiguration configuration) {
        DBM = DBManipulation.createConnection(configuration);
        conn = DBM.getConnection();
    }

    public DbResultSet(DBConfiguration configuration, CRUDOperationModel crud) {
        this.crud = crud;

        DBM = DBManipulation.createConnection(configuration);
        conn = DBM.getConnection();
    }

    public DbResultSet(DBConfiguration configuration, CRUDOperationModel crud, String tableName) {
        this.crud = crud;
        this.tableName = tableName;

        DBM = DBManipulation.createConnection(configuration);
        conn = DBM.getConnection();
    }

    public Vector<Integer> getRedniBrojevi() {
        return redniBrojevi;
    }

    public void setRedniBrojevi(Vector<Integer> redniBrojevi) {
        this.redniBrojevi = redniBrojevi;
    }

    public Vector<Object> getEditableCells() {
        return editableCells;
    }

    public void setEditableCells(Vector<Object> editableCells) {
        this.editableCells = editableCells;
    }

    public DBManipulation getDBM() {
        return DBM;
    }

    public void setDBM(DBManipulation dBM) {
        DBM = dBM;
    }

    public Connection getConn() {
        return conn;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }

    public CRUDOperationModel getCrud() {
        return crud;
    }

    public void setCrud(CRUDOperationModel crud) {
        this.crud = crud;
    }

    public Statement getStmt() {
        return stmt;
    }

    public void setStmt(Statement stmt) {
        this.stmt = stmt;
    }

    public CallableStatement getProcStmt() {
        return procStmt;
    }

    public void setProcStmt(CallableStatement procStmt) {
        this.procStmt = procStmt;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    public ResultSetMetaData getRsmd() {
        return rsmd;
    }

    public void setRsmd(ResultSetMetaData rsmd) {
        this.rsmd = rsmd;
    }

    public int retrieveAll() {
        try {
            procStmt = conn.prepareCall("{ call " + crud.getRetrieveSProc() + "(?)}", SQLServerResultSet.TYPE_SCROLL_INSENSITIVE,
                    SQLServerResultSet.CONCUR_READ_ONLY);

            procStmt.setString(1, tableName);

            rs = procStmt.executeQuery();
            rsmd = rs.getMetaData();

            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                editableCells.add(new String());

            }

            rs.last();

            for (int i = 0; i < rs.getRow(); i++) {
                redniBrojevi.add(i + 1);
            }

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage(), "SQLException Retrieve", JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
        }
        return 0;
    }

    public int retrieveWhere(String[] columns, Object[] values) {
        try {
            String arguments = "(";

            for (int i = 0; i < columns.length; i++) {
                arguments += "?";

                if (i != columns.length - 1) {
                    arguments += ",";
                }
            }

            arguments += ")";

            procStmt = conn.prepareCall("{ call " + crud.getRetrieveSProc() + arguments + "}",
                    ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

            for (int i = 0; i < values.length; i++) {
                procStmt.setObject(i + 1, values[i]);
            }

            rs = procStmt.executeQuery();
            rsmd = rs.getMetaData();

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage(), "SQLException Retrieve", JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
        }
        return 0;
    }

    /**
     * Ubacuje nove podatke u bazu kroz stored proceduru pomocu metode
     **/
    public int insert(String[] columns, Object[] values) {
        try {
            String arguments = "(";

            for (int i = 0; i < columns.length; i++) {
                arguments += "?";

                if (i != columns.length - 1) {
                    arguments += ",";
                }
            }

            arguments += ")";

            procStmt = conn.prepareCall("{ call " + crud.getCreateSProc() + arguments + "}",
                    ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

            for (int i = 0; i < values.length; i++) {
                procStmt.setObject(i + 1, values[i]);
            }

            procStmt.execute();

            return 1;

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage(), "SQLException Retrieve", JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
        }
        return 0;
    }

    /*
     * public int insertStudent(Integer indeks, String ime, String prezime, String
     * adresa, String email, Integer godina) { try { CallableStatement procStmt =
     * conn.prepareCall("{ call insertStudent(?,?,?,?,?,?) }",
     * SQLServerResultSet.TYPE_SCROLL_INSENSITIVE,
     * SQLServerResultSet.CONCUR_READ_ONLY); procStmt.setInt(1, indeks);
     * procStmt.setString(2, ime); procStmt.setString(3, prezime);
     * procStmt.setString(4, adresa); procStmt.setString(5, email);
     * procStmt.setInt(6, godina);
     *
     * procStmt.execute();
     *
     * //retrieveAllStudents();
     *
     * procStmt.close();
     *
     * return 1; } catch (SQLException e) { JOptionPane.showMessageDialog(null,
     * e.getMessage(), "SQLException Insert", JOptionPane.ERROR_MESSAGE);
     * e.printStackTrace(); } return 0; }
     */

    /**
     * Brise studenta iz baze na osnovu id studenta.
     *
     * @param id
     * @return
     */
    public int delete(int id) {
        try {
            procStmt = conn.prepareCall("{ call " + crud.getDeleteSProc() + "(?) }", ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            procStmt.setInt(1, id);

            int result = procStmt.executeUpdate();

            if (result > 0) {
                retrieveAll();
            }

            procStmt.close();

            return result;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage(), "SQLException Delete", JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
        }
        return 0;
    }

    public int retrieveForReport() {
        try {
            procStmt = conn.prepareCall("{ call " + crud.getRetrieveForReport() + "()}", SQLServerResultSet.TYPE_SCROLL_INSENSITIVE,
                    SQLServerResultSet.CONCUR_READ_ONLY);

            rs = procStmt.executeQuery();
            rsmd = rs.getMetaData();

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage(), "SQLException Retrieve", JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
        }
        return 0;
    }

    /**
     * Mijenja postojeceg studenta po kljucu broj indeksa.
     *
     * @param id
     * @param indeks
     * @param ime
     * @param prezime
     * @param adresa
     * @param email
     * @param godina
     * @return broj zahvacenih redova sql upitom
     */
    // TODO: uraditi generickije
    /*
     * public int updateStudent(Integer id, Integer indeks, String ime, String
     * prezime, String adresa, String email, Integer godina) { String s =
     * "UPDATE Student SET broj_indeksa=" + indeks + "," + "ime='" + ime + "'," +
     * "prezime='" + prezime + "'," + "adresa='" + adresa + "'," + "email='" + email
     * + "'," + "godina=" + godina + " " + "WHERE id_studenta=" + id; try {
     * Statement stmt =
     * this.conn.createStatement(SQLServerResultSet.TYPE_SCROLL_INSENSITIVE,
     * SQLServerResultSet.CONCUR_READ_ONLY); int result = stmt.executeUpdate(s);
     *
     * if (result > 0) { retrieveAllStudents(); }
     *
     * stmt.close();
     *
     * return result; } catch (SQLException e) { JOptionPane.showMessageDialog(null,
     * e.getMessage(), "SQLException", JOptionPane.ERROR_MESSAGE); } return 0; }
     */

}
