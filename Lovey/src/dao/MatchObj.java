package dao;

public class MatchObj {

	private String pid;
	private String pnick;
	private String pimage;
	private String pmbti;
	private String pinfo;
	

	public MatchObj(String pid, String pnick, String pimage, String pmbti, String pinfo) {
		super();
		this.pid = pid;
		this.pnick = pnick;
		this.pimage = pimage;
		this.pmbti = pmbti;
		this.pinfo = pinfo;
	}


	public String getPid() {
		return pid;
	}


	public String getPnick() {
		return pnick;
	}


	public String getPimage() {
		return pimage;
	}


	public String getPmbti() {
		return pmbti;
	}


	public String getPinfo() {
		return pinfo;
	}
	
	
	
}