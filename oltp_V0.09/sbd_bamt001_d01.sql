
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_bamt001_d01;
-- Compressed: N ;
-- Distributed: Y (ban);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_bamt001_d01;

CREATE TABLE  oltp.sbd_bamt001_d01 (
ban varchar(8) NOT NULL,
bl_ym varchar(5) NOT NULL,
upd_tms varchar(2) ,
hsn_cd varchar(1) ,
vat_losn varchar(9) ,
coll_b_date varchar(7) ,
coll_e_date varchar(7) ,
main_levy_mode varchar(1) ,
bl_levy_mode varchar(1) ,
vat_coll_mode varchar(1) ,
coll_mk varchar(1) ,
sale_amt1 decimal(14,0) ,
sale_amt2 decimal(14,0) ,
sale_amt3 decimal(14,0) ,
assess_tax decimal(12,0) ,
zsp_app_sub_tax decimal(12,0) ,
lp_acu_sub_blnc decimal(12,0) ,
zsp_acu_sub_tax decimal(12,0) ,
pybl_tax decimal(12,0) ,
vat_orgl_cp_no varchar(10) ,
resp_idn varchar(10) ,
resp_nm varchar(30) ,
resp_nm_ov_mk varchar(1) ,
ban_nm varchar(52) ,
ban_addr varchar(80) ,
tms_2_mk varchar(1) ,
tms_2_b_date varchar(7) ,
tms_2_e_date varchar(7) ,
tms_2_reas_cd varchar(20) ,
adm_rmd_stus varchar(1) ,
adm_rmd_int decimal(12,0) ,
dly_pay_amt decimal(12,0) ,
dly_pay_int decimal(12,0) ,
extend_b_date varchar(7) ,
extend_e_date varchar(7) ,
extend_reas_cd varchar(2) ,
manage_cd varchar(24) ,
o_adt_unit varchar(3) ,
submit_mk varchar(1) ,
peddler_lic_mk varchar(1) ,
asg_key varchar(25) ,
trsf_mk varchar(1) ,
cnvt_clcn_mk varchar(1) ,
cnvt_wlfr_mk varchar(1) ,
death_mk varchar(1) ,
rdc_docu_no varchar(20) ,
rdc_date varchar(7) ,
wlfr_sale_amt decimal(14,0) ,
wlfr_tax decimal(12,0) ,
apl_upd_no varchar(15) ,
update_reas_cd varchar(2) ,
keyin_id_cd varchar(8) ,
keyin_date varchar(7) ,
keyin_time varchar(6) ,
apl_sale_amt1 decimal(14,0) ,
apl_sale_amt2 decimal(14,0) ,
apl_sale_amt3 decimal(14,0) ,
apl_assess_tax decimal(12,0) ,
extend_reas_cntnt varchar(60) ,
wlfr_sale_amt1 decimal(14,0) ,
wlfr_sale_amt2 decimal(14,0) ,
wlfr_sale_amt3 decimal(14,0) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (ban)
;

ALTER TABLE  oltp.sbd_bamt001_d01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_bamt001_d01 ADD CONSTRAINT sbd_bamt001_d01_PK PRIMARY KEY (ban,bl_ym);
