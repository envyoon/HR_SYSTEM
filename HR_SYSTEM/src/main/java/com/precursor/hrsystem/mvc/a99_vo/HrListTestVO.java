package com.precursor.hrsystem.mvc.a99_vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class HrListTestVO {
	
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
	
	
}
