package dao;

public class CommentObj {
	String cid;
	String bid;
	String writer;
	String cmt;
	String cdate;
	
	public CommentObj(String cid, String bid, String writer, String cmt, String cdate) {
		super();
		this.cid = cid;
		this.bid = bid;
		this.writer = writer;
		this.cmt = cmt;
		this.cdate = cdate;
	}
	public String getCid() {
		return cid;
	}
	public String getBid() {
		return bid;
	}
	public String getWriter() {
		return writer;
	}
	public String getCmt() {
		return cmt;
	}
	public String getCdate() {
		return cdate;
	}
	

}
