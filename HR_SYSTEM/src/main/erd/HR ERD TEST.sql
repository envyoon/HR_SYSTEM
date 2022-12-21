﻿CREATE TABLE `human_resource` (
	`IM_KEY`	NUMBER	NOT NULL,
	`IM_USER_ID`	varchar(100)	NULL,
	`IM_USER_NAME_KR`	varchar(100)	NULL,
	`IM_USER_NAME_EN`	varchar(100)	NULL,
	`IM_USER_RANK`	varchar(50)	NULL,
	`IM_DEPT`	varchar(50)	NULL,
	`IM_USER_MAIL`	varchar(200)	NULL,
	`IM_PHONE_NUM`	varchar(20)	NULL,
	`IM_HIRE_DATE`	DATE	NULL,
	`IM_UPDATE`	DATE	NULL,
	`IM_USER_PW`	VARCHAR(100)	NULL,
	`IM_FLAG`	VARCHAR(1)	NULL,
	`IM_STATUS`	VARCHAR(1)	NULL,
	`ERCO_YMD`	DATE	NULL,
	`RTRM_YMD`	DATE	NULL,
	`BIRYMD`	DATE	NULL
);

ALTER TABLE `human_resource` ADD CONSTRAINT `PK_HUMAN_RESOURCE` PRIMARY KEY (
	`IM_KEY`
);
