
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_blit032_h01;
-- Compressed: N ;
-- Distributed: Y (ban,format_cd,pfn,seq_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_blit032_h01;

CREATE TABLE  oltp.sbd_blit032_h01 (
data_ym varchar(5) NOT NULL,
ban varchar(8) NOT NULL,
format_cd varchar(2) NOT NULL,
pfn varchar(23) NOT NULL,
seq_no varchar(9) NOT NULL,
hsn_cd varchar(1) ,
vat_losn varchar(9) ,
data_bl_ym varchar(5) ,
buyer_ban varchar(8) ,
seller_ban varchar(8) ,
invo_track_no varchar(14) ,
sale_amt decimal(14,0) ,
busi_tax decimal(14,0) ,
levy_tp varchar(1) ,
credit_ded_cd varchar(1) ,
keyin_id_cd varchar(8) ,
filer_tp varchar(1) ,
invo_copies varchar(1) ,
chk_abnor_mk varchar(1) ,
void_cd varchar(1) ,
dup_credit_ded_mk varchar(1) ,
dup_credit_ded_pfn varchar(23) ,
dup_credit_ded_ban varchar(8) ,
buyer_hsn_cd varchar(1) ,
buyer_losn varchar(9) ,
tax_rgst_stus1 varchar(2) ,
false_busi_mk1 varchar(1) ,
yn_flg1 varchar(1) ,
flg_mk1 varchar(1) ,
seller_hsn_cd varchar(1) ,
seller_losn varchar(9) ,
tax_rgst_stus2 varchar(2) ,
false_busi_mk2 varchar(1) ,
yn_flg2 varchar(1) ,
flg_mk2 varchar(1) ,
p_s_mk varchar(1) ,
levy_mode varchar(1) ,
flg_vat_mk varchar(1) ,
stus_cd varchar(1) ,
cntrpt_mk varchar(1) ,
asg_date varchar(7) NOT NULL,
case_stus varchar(1) ,
chk_ym varchar(5) ,
bond_goods_mk varchar(1) ,
e_invo_mk varchar(1) ,
docu_mk varchar(1) ,
chk_rslt varchar(1) ,
suple_amt decimal(14,0) ,
suple_tax decimal(14,0) ,
vio_chk_rslt varchar(1) ,
update_date varchar(7) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (ban,format_cd,pfn,seq_no)
;

ALTER TABLE  oltp.sbd_blit032_h01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_blit032_h01 ADD CONSTRAINT sbd_blit032_h01_PK PRIMARY KEY (data_ym,ban,format_cd,pfn,seq_no,asg_date);
