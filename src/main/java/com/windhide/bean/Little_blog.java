package com.windhide.bean;

public class Little_blog {

		
	private int id;
	private String Day;
	private String Mouth;
	private String bigimgsrc;
	private String blg_title;
	private String intro;
	private int big_blog_id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDay() {
		return Day;
	}
	public void setDay(String day) {
		Day = day;
	}
	public String getMouth() {
		return Mouth;
	}
	public void setMouth(String mouth) {
		Mouth = mouth;
	}
	public String getBigimgsrc() {
		return bigimgsrc;
	}
	public void setBigimgsrc(String bigimgsrc) {
		this.bigimgsrc = bigimgsrc;
	}
	public String getBlg_title() {
		return blg_title;
	}
	public void setBlg_title(String blg_title) {
		this.blg_title = blg_title;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public int getBig_blog_id() {
		return big_blog_id;
	}
	public void setBig_blog_id(int big_blog_id) {
		this.big_blog_id = big_blog_id;
	}
	public Little_blog(int id, String day, String mouth, String bigimgsrc, String blg_title, String intro,
			int big_blog_id) {
		super();
		this.id = id;
		Day = day;
		Mouth = mouth;
		this.bigimgsrc = bigimgsrc;
		this.blg_title = blg_title;
		this.intro = intro;
		this.big_blog_id = big_blog_id;
	}
	public Little_blog() {
		super();
	}
	@Override
	public String toString() {
		return "Little_blog [id=" + id + ", Day=" + Day + ", Mouth=" + Mouth + ", bigimgsrc=" + bigimgsrc
				+ ", blg_title=" + blg_title + ", intro=" + intro + ", big_blog_id=" + big_blog_id + "]";
	}
	
	

	
	
}
