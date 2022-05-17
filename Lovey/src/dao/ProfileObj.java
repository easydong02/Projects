package dao;

public class ProfileObj {
	String pid,pnick,pmbti,pimage,pinfo;

	public String getPid() {
		return pid;
	}

	public String getPnick() {
		return pnick;
	}

	public String getPmbti() {
		return pmbti;
	}

	public String getPimage() {
		return pimage;
	}

	public String getPinfo() {
		return pinfo;
	}

	public ProfileObj(String pid, String pnick, String pmbti, String pimage, String pinfo) {
		super();
		this.pid = pid;
		this.pnick = pnick;
		this.pmbti = pmbti;
		this.pimage = pimage;
		this.pinfo = pinfo;
	}
	
	
	
	
}
