package dao;

public class MemberObj {
	String uid;
	String upassword;
	String uname;
	String ugender;
	String uphone;
	String uaddress;
	String ubirth;
	String uemail;
	public String getUid() {
		return uid;
	}
	public String getUpassword() {
		return upassword;
	}
	public String getUname() {
		return uname;
	}
	public String getUgender() {
		return ugender;
	}
	public String getUphone() {
		return uphone;
	}
	public String getUaddress() {
		return uaddress;
	}
	public String getUbirth() {
		return ubirth;
	}
	public String getUemail() {
		return uemail;
	}
	public MemberObj(String uid, String upassword, String uname, String ugender, String uphone, String uaddress,
			String ubirth, String uemail) {
		super();
		this.uid = uid;
		this.upassword = upassword;
		this.uname = uname;
		this.ugender = ugender;
		this.uphone = uphone;
		this.uaddress = uaddress;
		this.ubirth = ubirth;
		this.uemail = uemail;
	}

	
	
	
}
