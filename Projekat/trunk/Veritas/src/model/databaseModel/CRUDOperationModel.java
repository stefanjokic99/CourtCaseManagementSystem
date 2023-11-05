package model.databaseModel;

public class CRUDOperationModel extends TreeElement {
	private String createSProc = null;
	private String retrieveSProc = null;
	private String retrieveForReport = null;
	private String updateSProc = null;
	private String deleteSProc = null;

	public CRUDOperationModel() {
	}

	public String getCreateSProc() {
		return createSProc;
	}

	public void setCreateSProc(String createSProc) {
		this.createSProc = createSProc;
	}

	public String getRetrieveSProc() {
		return retrieveSProc;
	}

	public void setRetrieveSProc(String retrieveSProc) {
		this.retrieveSProc = retrieveSProc;
	}

	public String getUpdateSProc() {
		return updateSProc;
	}

	public void setUpdateSProc(String updateSProc) {
		this.updateSProc = updateSProc;
	}

	public String getRetrieveForReport() {
		return retrieveForReport;
	}

	public void setRetrieveForReport(String retrieveForReport) {
		this.retrieveForReport = retrieveForReport;
	}

	public String getDeleteSProc() {
		return deleteSProc;
	}

	public void setDeleteSProc(String deleteSProc) {
		this.deleteSProc = deleteSProc;
	}
}
