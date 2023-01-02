package com.precursor.hrsystem.mvc.a99_vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
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
@EqualsAndHashCode(callSuper = true)
public class HrListTestVO extends PagingVO{
	
	private int imKey;
	private String imUserId;
	private String imUserNameKr;
	private String imUserNameEn;
	private String imUserRank;
	private String imDept;
	private String imUserMail;
	private String imPhoneNum;
	private Date imHireDate;
	private Date imUpdate;
	private String imUserPw;
	private String imFlag;
	private String imStatus;
	private Date ercoYmd;
	private Date rtrmYmd;
	private Date birymd;
	
	
}
