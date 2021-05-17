
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_wuut012_e01;
-- Compressed: N ;
-- Distributed: Y (ref_batch_no,serial_no,hsn_cd);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_wuut012_e01;

CREATE TABLE  oltp.sbd_wuut012_e01 (
keyin_yy varchar(3) NOT NULL,
ref_batch_no varchar(4) NOT NULL,
serial_no varchar(6) NOT NULL,
hsn_cd varchar(1) NOT NULL,
dst_cd varchar(2) ,
town_cd varchar(2) ,
tax_cd varchar(2) ,
subtax_cd varchar(1) ,
bl_yr_pd varchar(4) ,
data_no varchar(10) ,
manage_ck1_no varchar(1) ,
manage_ck2_no varchar(1) ,
sys_cd varchar(3) ,
idn_ban varchar(10) ,
pfn_yr varchar(3) ,
pfn_data_tp varchar(3) ,
pfn_serial_no varchar(11) ,
ref_tp varchar(1) ,
ref_check_no varchar(13) ,
ref_date varchar(7) ,
check_vouch_date varchar(7) ,
redeem_xpr_date varchar(7) ,
ref_acct_no varchar(6) ,
rtn_ba_tax decimal(12;0) ,
misc1_cd varchar(1) ,
misc1_amt decimal(11;0) ,
misc2_cd varchar(1) ,
misc2_amt decimal(11;0) ,
misc3_cd varchar(1) ,
misc3_amt decimal(11;0) ,
misc4_cd varchar(1) ,
misc4_amt decimal(11;0) ,
misc5_cd varchar(1) ,
misc5_amt decimal(11;0) ,
misc6_cd varchar(1) ,
misc6_amt decimal(11;0) ,
credit_ded_tax decimal(11;0) ,
pers_co_nm varchar(52) ,
resp_idn varchar(10) ,
resp_nm varchar(30) ,
addr_hsn_nm varchar(3) ,
addr_town_nm varchar(5) ,
addr_vill_nm varchar(5) ,
addr_lin varchar(5) ,
addr_road_no varchar(50) ,
ref_yr varchar(1) ,
ref_reas varchar(1) ,
ref_reas_rmk varchar(20) ,
gove_priv_tp varchar(1) ,
id_cd varchar(1) ,
lbr_pnsn_mk varchar(1) ,
online_mk varchar(1) ,
bank_cd varchar(7) ,
depo_tp varchar(1) ,
acct_no varchar(14) ,
apl_org_cd varchar(3) ,
apl_keyin_date varchar(7) ,
apl_serial_no varchar(3) ,
force_ref_cd varchar(1) ,
abnormal_rmk varchar(20) ,
sumy_bank_cd varchar(7) ,
tran_check_mk varchar(1) ,
send_mk varchar(1) ,
ref_cncl_mk varchar(1) ,
cncl_date varchar(7) ,
redeem_date varchar(7) ,
send_rtn_date varchar(7) ,
redeem_serial_no varchar(7) ,
extend_tms decimal(1;0) ,
ref_sup_sd_tms decimal(1;0) ,
remark varchar(50) ,
un_send_tran_mk varchar(2) ,
send_seq_no varchar(10) ,
alien_check_dstg varchar(1) ,
update_date varchar(7) ,
update_time varchar(6) ,
user_id_cd varchar(8) ,
reply_not_recv varchar(1) ,
reply_not_recv_date varchar(7) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (ref_batch_no,serial_no,hsn_cd)
;

ALTER TABLE  oltp.sbd_wuut012_e01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_wuut012_e01 ADD CONSTRAINT sbd_wuut012_e01_PK PRIMARY KEY (keyin_yy,ref_batch_no,serial_no,hsn_cd);
