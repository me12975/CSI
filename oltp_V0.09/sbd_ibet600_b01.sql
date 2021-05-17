
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_ibet600_b01;
-- Compressed: N ;
-- Distributed: Y (rfn,item_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_ibet600_b01;

CREATE TABLE  oltp.sbd_ibet600_b01 (
rfn varchar(17) NOT NULL,
item_no decimal(4,0) NOT NULL,
incmer_idn varchar(10) NOT NULL,
incmer_nm varchar(20) ,
id_tp varchar(1) ,
id_cd varchar(1) ,
dup_mk varchar(1) ,
incm_pfn varchar(20) ,
incm_pfn_idn_ban varchar(10) ,
hou_losn varchar(12) ,
orgn_tp varchar(1) ,
shr_ratio varchar(2) ,
incm_tp varchar(1) ,
incm_format_cd varchar(2) ,
incm_mk varchar(1) ,
incm_amt decimal(14,0) ,
wh_tax decimal(14,0) ,
remark varchar(1) ,
upd_mk varchar(1) ,
lend_mk varchar(1) ,
punish_mk varchar(1) ,
suc_mk varchar(1) ,
hou_lse_sel_chk_tp varchar(1) ,
inq_cmpl_date varchar(13) ,
org_cd varchar(3) ,
user_id_cd varchar(8) ,
update_seq_no varchar(3) ,
update_sys_tp varchar(3) ,
update_ctrl_area varchar(2) ,
update_date_time varchar(13) ,
force_mk varchar(1) ,
mrg_mk varchar(1) ,
time_stamp timestamp ,
prof_cd varchar(2) ,
incm_loss_amt decimal(14,0) ,
wh_tax_sub decimal(14,0) ,
rvnu_tot decimal(14,0) ,
esstl_exp decimal(14,0) ,
notes varchar(50) ,
oth_mk varchar(10) ,
net_levy_mk varchar(1) ,
tax_avoid_mk varchar(1) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (rfn,item_no)
;

ALTER TABLE  oltp.sbd_ibet600_b01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_ibet600_b01 ADD CONSTRAINT sbd_ibet600_b01_PK PRIMARY KEY (rfn,item_no,incmer_idn);
