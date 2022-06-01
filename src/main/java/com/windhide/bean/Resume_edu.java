package com.windhide.bean;

public class Resume_edu {
	private int id;
	private String edu_bigcontext;
	private String timeline;
	private String edu_context;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEdu_bigcontext() {
		return edu_bigcontext;
	}
	public void setEdu_bigcontext(String edu_bigcontext) {
		this.edu_bigcontext = edu_bigcontext;
	}
	public String getTimeline() {
		return timeline;
	}
	public void setTimeline(String timeline) {
		this.timeline = timeline;
	}
	public String getEdu_context() {
		return edu_context;
	}
	public void setEdu_context(String edu_context) {
		this.edu_context = edu_context;
	}
	public Resume_edu(int id, String edu_bigcontext, String timeline, String edu_context) {
		super();
		this.id = id;
		this.edu_bigcontext = edu_bigcontext;
		this.timeline = timeline;
		this.edu_context = edu_context;
	}
	public Resume_edu() {
		super();
	}
	@Override
	public String toString() {
		return "Resume_edu [id=" + id + ", edu_bigcontext=" + edu_bigcontext + ", timeline=" + timeline
				+ ", edu_context=" + edu_context + "]";
	}

	
	
}
