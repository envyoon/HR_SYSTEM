package com.precursor.hrsystem.mvc.hrlist.a04_vo;

import java.sql.Date;

public class HrListTest {
	private int im_key;
	private String im_user_id;
	private String im_user_name_kr;
	private String im_user_name_en;
	private String im_user_rank;
	private String im_dept;
	private String im_user_mail;
	private String im_phone_num;
	private Date im_hire_date;
	private Date im_update;
	private String im_user_pw;
	private String im_flag;
	private String im_status;
	private Date erco_ymd;
	private Date rtrm_ymd;
	private Date birymd;
	
	public HrListTest(int im_key, String im_user_id, String im_user_name_kr, String im_user_name_en,
			String im_user_rank, String im_dept, String im_user_mail, String im_phone_num, Date im_hire_date,
			Date im_update, String im_user_pw, String im_flag, String im_status, Date erco_ymd, Date rtrm_ymd,
			Date birymd) {
		super();
		this.im_key = im_key;
		this.im_user_id = im_user_id;
		this.im_user_name_kr = im_user_name_kr;
		this.im_user_name_en = im_user_name_en;
		this.im_user_rank = im_user_rank;
		this.im_dept = im_dept;
		this.im_user_mail = im_user_mail;
		this.im_phone_num = im_phone_num;
		this.im_hire_date = im_hire_date;
		this.im_update = im_update;
		this.im_user_pw = im_user_pw;
		this.im_flag = im_flag;
		this.im_status = im_status;
		this.erco_ymd = erco_ymd;
		this.rtrm_ymd = rtrm_ymd;
		this.birymd = birymd;
	}
	
	public int getIm_key() {
		return im_key;
	}
	public String getIm_user_id() {
		return im_user_id;
	}
	public String getIm_user_name_kr() {
		return im_user_name_kr;
	}
	public String getIm_user_name_en() {
		return im_user_name_en;
	}
	public String getIm_user_rank() {
		return im_user_rank;
	}
	public String getIm_dept() {
		return im_dept;
	}
	public String getIm_user_mail() {
		return im_user_mail;
	}
	public String getIm_phone_num() {
		return im_phone_num;
	}
	public Date getIm_hire_date() {
		return im_hire_date;
	}
	public Date getIm_update() {
		return im_update;
	}
	public String getIm_user_pw() {
		return im_user_pw;
	}
	public String getIm_flag() {
		return im_flag;
	}
	public String getIm_status() {
		return im_status;
	}
	public Date getErco_ymd() {
		return erco_ymd;
	}
	public Date getRtrm_ymd() {
		return rtrm_ymd;
	}
	public Date getBirymd() {
		return birymd;
	}
	public void setIm_key(int im_key) {
		this.im_key = im_key;
	}
	public void setIm_user_id(String im_user_id) {
		this.im_user_id = im_user_id;
	}
	public void setIm_user_name_kr(String im_user_name_kr) {
		this.im_user_name_kr = im_user_name_kr;
	}
	public void setIm_user_name_en(String im_user_name_en) {
		this.im_user_name_en = im_user_name_en;
	}
	public void setIm_user_rank(String im_user_rank) {
		this.im_user_rank = im_user_rank;
	}
	public void setIm_dept(String im_dept) {
		this.im_dept = im_dept;
	}
	public void setIm_user_mail(String im_user_mail) {
		this.im_user_mail = im_user_mail;
	}
	public void setIm_phone_num(String im_phone_num) {
		this.im_phone_num = im_phone_num;
	}
	public void setIm_hire_date(Date im_hire_date) {
		this.im_hire_date = im_hire_date;
	}
	public void setIm_update(Date im_update) {
		this.im_update = im_update;
	}
	public void setIm_user_pw(String im_user_pw) {
		this.im_user_pw = im_user_pw;
	}
	public void setIm_flag(String im_flag) {
		this.im_flag = im_flag;
	}
	public void setIm_status(String im_status) {
		this.im_status = im_status;
	}
	public void setErco_ymd(Date erco_ymd) {
		this.erco_ymd = erco_ymd;
	}
	public void setRtrm_ymd(Date rtrm_ymd) {
		this.rtrm_ymd = rtrm_ymd;
	}
	public void setBirymd(Date birymd) {
		this.birymd = birymd;
	}

	@Override
	public String toString() {
		return "HrListTest [im_key=" + im_key + ", im_user_id=" + im_user_id + ", im_user_name_kr=" + im_user_name_kr
				+ ", im_user_name_en=" + im_user_name_en + ", im_user_rank=" + im_user_rank + ", im_dept=" + im_dept
				+ ", im_user_mail=" + im_user_mail + ", im_phone_num=" + im_phone_num + ", im_hire_date=" + im_hire_date
				+ ", im_update=" + im_update + ", im_user_pw=" + im_user_pw + ", im_flag=" + im_flag + ", im_status="
				+ im_status + ", erco_ymd=" + erco_ymd + ", rtrm_ymd=" + rtrm_ymd + ", birymd=" + birymd + "]";
	}
	
	
	
	
}
