
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_brmt006_a05;
-- Compressed: N ;
-- Distributed: Y (pfn_hsn_cd,pfn_dst_cd,pfn_serv_area,pfn_data_source_mk,pfn_book_page_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_brmt006_a05;

CREATE TABLE  oltp.sbd_brmt006_a05 (
pfn_hsn_cd varchar(1) NOT NULL,
pfn_dst_cd varchar(2) NOT NULL,
pfn_serv_area varchar(2) NOT NULL,
pfn_create_yy varchar(3) NOT NULL,
pfn_create_mm varchar(2) NOT NULL,
pfn_data_source_mk varchar(1) NOT NULL,
pfn_book_page_no varchar(4) NOT NULL,
ban varchar(8) ,
bl_yr varchar(3) ,
bl_mm varchar(2) ,
ref_tms varchar(2) ,
total_paid_mk varchar(1) ,
vat_losn varchar(9) ,
flg_date varchar(7) ,
town_cd varchar(2) ,
tax_cd varchar(2) ,
subtax_cd varchar(1) ,
bl_yr_pd varchar(4) ,
data_no varchar(10) ,
manage_ck1_no varchar(1) ,
manage_ck2_no varchar(1) ,
sh_ref decimal(12,0) ,
apl_ref_tax decimal(12,0) ,
act_ref decimal(12,0) ,
inq_un_tax decimal(12,0) ,
extend_rtn_mk varchar(1) ,
dup_delete_mk varchar(1) ,
fsh_mk varchar(1) ,
asg_mk varchar(1) ,
coll_mk varchar(1) ,
ref_date varchar(7) ,
ref_reas varchar(1) ,
online_mk varchar(1) ,
bank_cd varchar(7) ,
acct_no varchar(14) ,
asg_no varchar(17) ,
asg_key varchar(25) ,
update_cd varchar(1) ,
keyin_id_cd varchar(8) ,
keyin_date varchar(13) ,
time_stamp timestamp ,
abnormal_mk varchar(1) ,
ref_key varchar(13) ,
busi_ref_grd_tp varchar(1) ,
conf_grd_tp_cond varchar(2) ,
cpa_auth_mk varchar(1) ,
ntf_mk varchar(1) ,
e_submit_mk varchar(1) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (pfn_hsn_cd,pfn_dst_cd,pfn_serv_area,pfn_data_source_mk,pfn_book_page_no)
;

ALTER TABLE  oltp.sbd_brmt006_a05 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_brmt006_a05 ADD CONSTRAINT sbd_brmt006_a05_PK PRIMARY KEY (pfn_hsn_cd,pfn_dst_cd,pfn_serv_area,pfn_create_yy,pfn_create_mm,pfn_data_source_mk,pfn_book_page_no);
