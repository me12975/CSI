
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_iict021_h01;
-- Compressed: N ;
-- Distributed: Y (incm_pfn_data_tp,incm_pfn_org,incm_pfn_serial_no,id_dstg,idn_ban_tp);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_iict021_h01;

CREATE TABLE  oltp.sbd_iict021_h01 (
incm_pfn_data_yr varchar(3) NOT NULL,
incm_pfn_data_tp varchar(1) NOT NULL,
incm_pfn_hsn_cd varchar(1) NOT NULL,
incm_pfn_org varchar(2) NOT NULL,
incm_pfn_serial_no varchar(6) NOT NULL,
id_dstg varchar(1) NOT NULL,
idn_ban_tp varchar(1) NOT NULL,
incm_pfn_idn_ban varchar(10) ,
vat_losn varchar(9) ,
tel_no varchar(22) ,
incm_tp varchar(2) NOT NULL,
copies decimal(9,0) ,
payment_t_amt decimal(14,0) ,
wh_tax decimal(14,0) ,
divd_pf_rtx decimal(14,0) ,
batch_tp varchar(2) ,
err_mk_g varchar(1) ,
err_mk_h varchar(1) ,
err_mk_b varchar(1) ,
err_mk_k varchar(1) ,
err_mk_n varchar(1) ,
err_mk_a varchar(1) ,
err_mk_t varchar(1) ,
err_mk_r varchar(1) ,
dlv_mk varchar(1) ,
upd_tp varchar(1) ,
org_cd varchar(3) ,
user_id_cd varchar(8) ,
update_date_time varchar(13) ,
trst_mk varchar(1) NOT NULL,
supfile_date varchar(7) ,
no_rsdt_recev_no varchar(7) ,
no_rsdt_pay_date varchar(7) NOT NULL,
trp_mk varchar(1) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (incm_pfn_data_tp,incm_pfn_org,incm_pfn_serial_no,id_dstg,idn_ban_tp)
;

ALTER TABLE  oltp.sbd_iict021_h01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_iict021_h01 ADD CONSTRAINT sbd_iict021_h01_PK PRIMARY KEY (incm_pfn_data_yr,incm_pfn_data_tp,incm_pfn_hsn_cd,incm_pfn_org,incm_pfn_serial_no,id_dstg,idn_ban_tp,incm_tp,trst_mk,no_rsdt_pay_date);
