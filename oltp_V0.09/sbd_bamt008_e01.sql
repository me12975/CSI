
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_bamt008_e01;
-- Compressed: N ;
-- Distributed: Y (idn_ban);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_bamt008_e01;

CREATE TABLE  oltp.sbd_bamt008_e01 (
idn_ban varchar(10) NOT NULL,
apl_ym varchar(5) NOT NULL,
vat_orgl_cp_no varchar(10) NOT NULL,
upd_tms varchar(2) ,
subtax_cd varchar(1) ,
vat_acru_dstg_tp varchar(1) ,
case_no varchar(16) ,
hsn_cd varchar(1) ,
vat_losn varchar(9) ,
t_sale_amt decimal(14,0) ,
beh_fine_amt decimal(12,0) ,
evade_t_tax decimal(12,0) ,
pybl_tax decimal(12,0) ,
drct_dtn_cr_tax decimal(12,0) ,
flg_dtn_cr_tax decimal(12,0) ,
slf_supfile_tax decimal(12,0) ,
suple_ica decimal(12,0) ,
dl_pay_b_dd varchar(7) ,
dl_pay_e_dd varchar(7) ,
vio_b_date varchar(7) ,
vio_e_date varchar(7) ,
resp_idn varchar(10) ,
resp_nm varchar(30) ,
ban_nm varchar(52) ,
ban_addr varchar(80) ,
vio_seize_date varchar(7) ,
dtn_cr_e_date varchar(7) ,
dtn_cr_submit_mk varchar(1) ,
dtn_cr_apl_upd_no varchar(15) ,
chk_tms decimal(2,0) ,
case_source varchar(1) ,
case_tp varchar(2) ,
apl_date varchar(7) ,
apl_tp varchar(1) ,
sctn_cd varchar(2) ,
audit_empl_cd varchar(8) ,
source_cd varchar(3) ,
paid_mk varchar(2) ,
dlv_vio_mk varchar(1) ,
ba_tax_mk varchar(1) ,
submit_mk varchar(1) ,
flg_tp varchar(1) ,
vio_fact_cd1 varchar(2) ,
vio_fact_cd2 varchar(2) ,
vio_fact_cd3 varchar(2) ,
vio_fact_cd4 varchar(2) ,
vio_fact_cd5 varchar(2) ,
vio_artc_cd1 varchar(7) ,
vio_artc_cd2 varchar(7) ,
vio_artc_cd3 varchar(7) ,
vio_artc_cd4 varchar(7) ,
vio_artc_cd5 varchar(7) ,
coll_reas_cd varchar(2) ,
coll_reas_nm varchar(200) ,
vio_host_nm varchar(52) ,
apl_limit_ym varchar(5) ,
asg_mk varchar(1) ,
asg_key varchar(25) ,
sup_rmd_source_mk varchar(1) ,
adm_rmd_mk varchar(1) ,
adm_rmd_stus varchar(1) ,
adm_rmd_int decimal(12,0) ,
dly_pay_amt decimal(12,0) ,
dly_pay_int decimal(12,0) ,
extend_b_date varchar(7) ,
extend_e_date varchar(7) ,
extend_reas_cd varchar(2) ,
manage_cd varchar(24) ,
o_adt_unit varchar(3) ,
cnvt_clcn_mk varchar(1) ,
cnvt_clcn_date varchar(7) ,
coll_stus varchar(1) ,
asg_ntc_coll_mk varchar(1) ,
rdc_docu_no varchar(10) ,
rdc_date varchar(7) ,
apl_upd_no varchar(15) ,
keyin_id_cd varchar(8) ,
keyin_date varchar(7) ,
keyin_time varchar(6) ,
lsn_relate_supp varchar(1) ,
guid_docu_date varchar(7) ,
guid_docu_char varchar(30) ,
guid_docu_no varchar(10) ,
get_promise_date varchar(7) ,
old_user_id_cd varchar(8) ,
extend_id_cd varchar(8) ,
death_mk varchar(1) ,
apl_mk varchar(1) ,
apl_date1 varchar(7) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (idn_ban)
;

ALTER TABLE  oltp.sbd_bamt008_e01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_bamt008_e01 ADD CONSTRAINT sbd_bamt008_e01_PK PRIMARY KEY (idn_ban,apl_ym,vat_orgl_cp_no);
