
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_brmt003_a05;
-- Compressed: N ;
-- Distributed: Y (ban);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_brmt003_a05;

CREATE TABLE  oltp.sbd_brmt003_a05 (
bl_yr varchar(3) NOT NULL,
bl_mm varchar(2) NOT NULL,
ban varchar(8) NOT NULL,
unfile_mk varchar(1) NOT NULL,
hsn_cd varchar(1) ,
dst_cd varchar(2) ,
town_cd varchar(2) ,
tax_cd varchar(2) ,
subtax_cd varchar(1) ,
bl_yr_pd varchar(4) ,
data_no varchar(10) ,
manage_ck1_no varchar(1) ,
manage_ck2_no varchar(1) ,
flg_date varchar(7) ,
vat_losn varchar(9) ,
zsp_pybl_tax decimal(14,0) ,
dly_uncm_amt decimal(14,0) ,
dl_pay_b_date varchar(7) ,
dl_pay_e_date varchar(7) ,
coll_mk varchar(1) ,
extend_b_date varchar(7) ,
extend_e_date varchar(7) ,
adm_rmd_int decimal(14,0) ,
apl_form_no varchar(15) ,
submit_mk varchar(1) ,
update_cd varchar(1) ,
keyin_id_cd varchar(8) ,
keyin_date varchar(13) ,
time_stamp timestamp ,
adm_rmd_stus varchar(1) ,
extend_reas_cd varchar(2) ,
vat_orgl_cp_no varchar(10) ,
death_resp_idn varchar(10) ,
death_resp_nm varchar(30) ,
extend_reas_desc varchar(20) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (ban)
;

ALTER TABLE  oltp.sbd_brmt003_a05 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_brmt003_a05 ADD CONSTRAINT sbd_brmt003_a05_PK PRIMARY KEY (bl_yr,bl_mm,ban,unfile_mk);
