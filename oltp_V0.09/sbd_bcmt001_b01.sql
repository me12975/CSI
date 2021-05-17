
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_bcmt001_b01;
-- Compressed: N ;
-- Distributed: Y (hsn_cd,dst_cd,case_source,case_tp,serial_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_bcmt001_b01;

CREATE TABLE  oltp.sbd_bcmt001_b01 (
hsn_cd varchar(1) NOT NULL,
dst_cd varchar(2) NOT NULL,
data_bl_ym varchar(5) NOT NULL,
case_source varchar(1) NOT NULL,
case_tp varchar(2) NOT NULL,
serial_no varchar(5) NOT NULL,
ban varchar(8) ,
serv_area varchar(2) NOT NULL,
abnor_kd varchar(1) ,
vouch_item varchar(1) ,
abnor_data_cnt decimal(5,0) ,
zp_flg decimal(5,0) ,
cntrpt_flg decimal(5,0) ,
trf_in_cnt decimal(5,0) ,
trf_out_cnt decimal(5,0) ,
trstr_cd varchar(5) ,
asg_date varchar(7) ,
sh_fsh_date varchar(7) ,
finish_date varchar(7) ,
chk_rslt_cnt0 decimal(5,0) ,
chk_rslt_cnt1 decimal(5,0) ,
chk_rslt_cnt2 decimal(5,0) ,
chk_rslt_cnt3 decimal(5,0) ,
chk_rslt_cnt4 decimal(5,0) ,
chk_rslt_cnt5 decimal(5,0) ,
chk_rslt_cnt6 decimal(5,0) ,
chk_rslt_cnt7 decimal(5,0) ,
chk_rslt_cnt8 decimal(5,0) ,
chk_rslt_cnt9 decimal(5,0) ,
vio_chk_rslt_cnt0 decimal(5,0) ,
vio_chk_rslt_cnt1 decimal(5,0) ,
vio_chk_rslt_cnt2 decimal(5,0) ,
vio_chk_rslt_cnt3 decimal(5,0) ,
vio_chk_rslt_cnt4 decimal(5,0) ,
vio_chk_rslt_cnt5 decimal(5,0) ,
vio_chk_rslt_cnt6 decimal(5,0) ,
vio_chk_rslt_cnt7 decimal(5,0) ,
vio_chk_rslt_cnt8 decimal(5,0) ,
vio_chk_rslt_cnt9 decimal(5,0) ,
suple_amt decimal(14,0) ,
suple_tax decimal(12,0) ,
jdgf_amt decimal(12,0) ,
sup_pay_s_amt decimal(14,0) ,
sup_pay_tax decimal(12,0) ,
vio_suple_tax decimal(12,0) ,
vio_suple_jdgf_amt decimal(12,0) ,
asg_mk varchar(1) ,
cnvt_asg_mk varchar(1) ,
cnvt_vio_acru_mk varchar(1) ,
update_date varchar(7) ,
update_user_cd varchar(8) ,
time_stamp timestamp ,
ntf_mk varchar(1) ,
case_status varchar(1) ,
cnvt_un_radt_mk varchar(1) ,
act_jdge_amt decimal(12,0) ,
sign_date varchar(7) ,
eip_key varchar(50) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (hsn_cd,dst_cd,case_source,case_tp,serial_no)
;

ALTER TABLE  oltp.sbd_bcmt001_b01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_bcmt001_b01 ADD CONSTRAINT sbd_bcmt001_b01_PK PRIMARY KEY (hsn_cd,dst_cd,data_bl_ym,case_source,case_tp,serial_no);
