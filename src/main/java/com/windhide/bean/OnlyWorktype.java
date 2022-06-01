package com.windhide.bean;

public class OnlyWorktype {
	private int id;
	private String typename;
	private String typeclass;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public OnlyWorktype(int id, String typename, String typeclass) {
		super();
		this.id = id;
		this.typename = typename;
		this.typeclass = typeclass;
	}
	public OnlyWorktype() {
		super();
	}
	@Override
	public String toString() {
		return "OnlyWorktype [id=" + id + ", typename=" + typename + ", typeclass=" + typeclass + "]";
	}
	
	

}
