package cn.whxlover.domain;

public class admin {
	private int id;
	private String admin_name;
	private String admin_password;
	private String admin_identity;
	private String statement;
	public String getAdmin_identity() {
		return admin_identity;
	}
	public void setAdmin_identity(String admin_identity) {
		this.admin_identity = admin_identity;
	}
	public String getStatement() {
		return statement;
	}
	public void setStatement(String statement) {
		this.statement = statement;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
}
