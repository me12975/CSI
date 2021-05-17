
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_blmt005_b01;
-- Compressed: N ;
-- Distributed: Y (p_s_item_pfn);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_blmt005_b01;

CREATE TABLE  oltp.sbd_blmt005_b01 (
data_ym varchar(5) NOT NULL,
format_cd varchar(2) NOT NULL,
p_s_item_pfn varchar(17) NOT NULL,
flg_mk varchar(1) NOT NULL,
seq_no varchar(9) NOT NULL,
data_bl_ym varchar(5) ,
buyer_ban varchar(8) ,
seller_ban varchar(8) ,
invo_track_no varchar(14) ,
invo_e_no varchar(14) ,
sumy_copy decimal(8,0) ,
sale_amt decimal(14,0) ,
levy_tp varchar(1) ,
busi_tax decimal(14,0) ,
credit_ded_cd varchar(1) ,
filer_tp varchar(1) ,
invo_copies varchar(1) ,
sp_tax_rate varchar(1) ,
sumy_mk varchar(1) ,
sale_tob_lq_mk varchar(1) ,
mdm_file_nm varchar(8) ,
flg_vat_org varchar(3) ,
update_cd varchar(1) ,
f_cnvt_mk varchar(1) ,
f_cnvt_date varchar(7) ,
e_invo_mk varchar(1) ,
chk_abnor_mk varchar(1) ,
chk_data_ym varchar(5) ,
chk_p_s_item_pfn varchar(17) ,
chk_flg_mk varchar(14) ,
chk_seq_no varchar(14) ,
jdgf_mk varchar(1) ,
apl_ym varchar(5) ,
case_no varchar(16) ,
slf_sup_mk varchar(1) ,
slf_sup_date varchar(7) ,
vat_pfn varchar(15) ,
keyin_id_cd varchar(8) ,
keyin_date varchar(7) ,
update_date varchar(7) ,
time_stamp timestamp ,
carrier_ym varchar(5) ,
carrier_no varchar(10) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (p_s_item_pfn)
;

ALTER TABLE  oltp.sbd_blmt005_b01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_blmt005_b01 ADD CONSTRAINT sbd_blmt005_b01_PK PRIMARY KEY (data_ym,format_cd,p_s_item_pfn,flg_mk,seq_no);
