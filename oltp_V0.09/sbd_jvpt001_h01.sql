
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_jvpt001_h01;
-- Compressed: N ;
-- Distributed: Y (asg_busi_tp,asg_no,chk_tms);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_jvpt001_h01;

CREATE TABLE  oltp.sbd_jvpt001_h01 (
asg_busi_tp varchar(3) NOT NULL,
data_bl_yr varchar(3) NOT NULL,
asg_no varchar(17) NOT NULL,
chk_tms varchar(2) NOT NULL,
asg_org_lvl varchar(1) ,
org_cd varchar(3) ,
idn_ban varchar(10) ,
serv_area varchar(2) ,
case_name varchar(52) ,
town_cd varchar(2) ,
upd_reas_tp varchar(1) ,
flg_tp varchar(1) ,
case_tp varchar(3) ,
case_source varchar(2) ,
bscd varchar(6) ,
pfs_honest_rate decimal(6,5) ,
flg_date varchar(7) ,
gift_date varchar(7) ,
coll_date varchar(7) ,
job_family_cd varchar(3) ,
range_cd varchar(1) ,
ba_tax_manage_cd varchar(24) ,
asg_spc_stat_tp varchar(2) ,
proj_asg_reas varchar(2) ,
abnor_reas1 varchar(1) ,
abnor_reas2 varchar(1) ,
abnor_reas3 varchar(1) ,
radt_sel_case_tp varchar(1) ,
flg_apl_amt1 decimal(14,0) ,
flg_apl_amt2 decimal(14,0) ,
flg_apl_amt3 decimal(14,0) ,
flg_apl_amt4 decimal(14,0) ,
flg_apl_amt5 decimal(14,0) ,
flg_apl_amt6 decimal(14,0) ,
flg_apl_amt7 decimal(14,0) ,
flg_apl_amt8 decimal(14,0) ,
flg_apl_amt9 decimal(14,0) ,
flg_apl_amt10 decimal(14,0) ,
flg_apl_amt11 decimal(14,0) ,
flg_apl_amt12 decimal(14,0) ,
flg_apl_amt13 decimal(14,0) ,
flg_apl_amt14 decimal(14,0) ,
flg_apl_amt15 decimal(14,0) ,
jdgf_amt decimal(14,0) ,
re_chk_vio_no varchar(14) ,
recev_docu_no varchar(11) ,
time_stamp timestamp ,
update_id_cd varchar(5) ,
update_date varchar(7) ,
mo_case_no varchar(11) ,
urgt_tp varchar(1) ,
bef_adt_anayz_mk varchar(1) ,
source_sys_cd varchar(3) ,
high_risk_mk varchar(5) ,
flg_apl_amt18 decimal(14,0) ,
abnor_reas4 varchar(1) ,
auto_trans varchar(1) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (asg_busi_tp,asg_no,chk_tms)
;

ALTER TABLE  oltp.sbd_jvpt001_h01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_jvpt001_h01 ADD CONSTRAINT sbd_jvpt001_h01_PK PRIMARY KEY (asg_busi_tp,data_bl_yr,asg_no,chk_tms);
