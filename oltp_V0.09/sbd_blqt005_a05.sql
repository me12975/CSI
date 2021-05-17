
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_blqt005_a05;
-- Compressed: N ;
-- Distributed: R (RANDOMLY);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_blqt005_a05;

CREATE TABLE  oltp.sbd_blqt005_a05 (
hsn_cd varchar(1) ,
ban varchar(8) ,
year varchar(3) ,
vat_losn varchar(9) ,
resp_nm varchar(30) ,
ban_nm varchar(30) ,
ban_addr varchar(68) ,
head_ban varchar(8) ,
total_paid_mk varchar(1) ,
wh_unit_ban varchar(8) ,
wh_unit_nm varchar(30) ,
incm_format_cd varchar(2) ,
incm_mk varchar(1) ,
payment_t_amt decimal(10,0) ,
wh_tot decimal(10,0) ,
payment_n_amt decimal(10,0) ,
flg_amt decimal(10,0) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED RANDOMLY
;

ALTER TABLE  oltp.sbd_blqt005_a05 OWNER TO ap_sbd;
