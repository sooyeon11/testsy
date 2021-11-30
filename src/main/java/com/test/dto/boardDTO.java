package com.test.dto;

import java.util.Date;

public class boardDTO {
	
	private int idx;
	private String id;
	private String title;
	private String content;
	private String img;
	private int hit;
	private String regidate;
	
	public boardDTO() {
	}
	
	public boardDTO(int idx, String id, String title, String content, String img, int hit, String regidate) {
		this.idx = idx;
		this.id = id;
		this.title = title;
		this.content = content;
		this.img = img;
		this.hit = hit;
		this.regidate = regidate;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getRegidate() {
		return regidate;
	}
	public void setRegidate(String regidate) {
		this.regidate = regidate;
	}
	@Override
	public String toString() {
		return "boardDTO [idx=" + idx + ", id=" + id + ", title=" + title + ", content=" + content + ", img=" + img
				+ ", hit=" + hit + ", regidate=" + regidate + "]";
	}
	
	
}
