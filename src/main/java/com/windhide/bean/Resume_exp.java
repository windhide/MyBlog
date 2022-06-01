package com.windhide.bean;

public class Resume_exp {
	private int id;
	private String exp_bigcontext;
	private String timeline;
	private String exp_context;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getExp_bigcontext() {
		return exp_bigcontext;
	}
	public void setExp_bigcontext(String exp_bigcontext) {
		this.exp_bigcontext = exp_bigcontext;
	}
	public String getTimeline() {
		return timeline;
	}
	public void setTimeline(String timeline) {
		this.timeline = timeline;
	}
	public String getExp_context() {
		return exp_context;
	}
	public void setExp_context(String exp_context) {
		this.exp_context = exp_context;
	}
	public Resume_exp(int id, String exp_bigcontext, String timeline, String exp_context) {
		super();
		this.id = id;
		this.exp_bigcontext = exp_bigcontext;
		this.timeline = timeline;
		this.exp_context = exp_context;
	}
	public Resume_exp() {
		super();
	}
	@Override
	public String toString() {
		return "Resume_exp [id=" + id + ", exp_bigcontext=" + exp_bigcontext + ", timeline=" + timeline
				+ ", exp_context=" + exp_context + "]";
	}

	
	
}
