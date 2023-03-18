package com.precursor.hrsystem.mvc.a99_vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class HrList extends PagingVO{

	private String usrUdfRetireStatus;
	private String usrLogin;
	private Date usrStartDate;
	private Date usrEndDate;
	private String usrLastName;
	private String usrFirstName;
	private String usrUdfKorname;
	private String usrUdfEngname;
	private String usrUdfDeptCenCode;
	private String usrUdfDeptCenName;
	private String usrUdfUserClassiName;
	private String usrUdfUserClassiCode;
	private String usrEmail;
	private String usrUdfPosCode;
	private String usrUdfAutopassPosName;
	private String usrUdfAutopassPosCode;
	private String usrUdfAutopassLocationCode;
	private String usrUdfAutopassLocationName;
	private String usrDescription;
	private Date usrUpdateDate;
	
}
