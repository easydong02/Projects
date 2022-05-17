package dao;

public class ChatObj {
	private String csendid;
	private String crecid;
	private String ctitle;
	private String ctime;
	private String cmsg;
	
	public String getCsendid() {
		return csendid;
	}
	public void setCsendid(String csendid) {
		this.csendid = csendid;
	}
	public String getCrecid() {
		return crecid;
	}
	public void setCrecid(String crecid) {
		this.crecid = crecid;
	}
	public String getCtitle() {
		return ctitle;
	}
	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public String getCmsg() {
		return cmsg;
	}
	public void setCmsg(String cmsg) {
		this.cmsg = cmsg;
	}
	
	
	
	public ChatObj(String csendid, String crecid, String ctitle, String ctime, String cmsg) {
		super();
		this.csendid = csendid;
		this.crecid = crecid;
		this.ctitle = ctitle;
		this.ctime = ctime;
		this.cmsg = cmsg;
	}
	
}
