package com.windhide.bean;

public class WorkerT {
	private int id;
	private String imgsrc;
	private String work_title;
	private int worktypeid;
	private int tid;
	private String typename;
	private String typeclass;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImgsrc() {
		return imgsrc;
	}
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	public String getWork_title() {
		return work_title;
	}
	public void setWork_title(String work_title) {
		this.work_title = work_title;
	}
	public int getWorktypeid() {
		return worktypeid;
	}
	public void setWorktypeid(int worktypeid) {
		this.worktypeid = worktypeid;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public String getTypeclass() {
		return typeclass;
	}
	public void setTypeclass(String typeclass) {
		this.typeclass = typeclass;
	}
	public WorkerT(int id, String imgsrc, String work_title, int worktypeid, int tid, String typename,
			String typeclass) {
		super();
		this.id = id;
		this.imgsrc = imgsrc;
		this.work_title = work_title;
		this.worktypeid = worktypeid;
		this.tid = tid;
		this.typename = typename;
		this.typeclass = typeclass;
	}
	public WorkerT() {
		super();
	}
	@Override
	public String toString() {
		return "WorkerT [id=" + id + ", imgsrc=" + imgsrc + ", work_title=" + work_title + ", worktypeid=" + worktypeid
				+ ", tid=" + tid + ", typename=" + typename + ", typeclass=" + typeclass + "]";
	}
	
	
	
	
	
	
}
