
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_blot009_h01;
-- Compressed: N ;
-- Distributed: Y (ban,bill_of_sight_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_blot009_h01;

CREATE TABLE  oltp.sbd_blot009_h01 (
data_ym varchar(5) NOT NULL,
ban varchar(8) NOT NULL,
bill_of_sight_no varchar(14) NOT NULL,
bill_of_sight_tp varchar(2) NOT NULL,
upd_tms varchar(1) ,
vat_losn varchar(9) ,
broker_date varchar(7) ,
fob decimal(16,2) ,
frgt decimal(16,2) ,
ins decimal(16,2) ,
tot_num decimal(16,2) ,
cnt decimal(8,0) ,
cnt_unit varchar(3) ,
weight decimal(18,6) ,
fob_currency_tp varchar(3) ,
exch_rate decimal(8,5) ,
o_bill_of_sight_no varchar(14) ,
sh_add_exp decimal(16,2) ,
sh_sub_exp decimal(16,2) ,
dtl_fob decimal(16,2) ,
upd_data varchar(1) ,
bill_of_sight_mk varchar(1) ,
hsn_cd varchar(1) ,
dst_cd varchar(2) ,
update_date varchar(13) ,
time_stamp timestamp ,
broker_nm varchar(210) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (ban,bill_of_sight_no)
;

ALTER TABLE  oltp.sbd_blot009_h01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_blot009_h01 ADD CONSTRAINT sbd_blot009_h01_PK PRIMARY KEY (data_ym,ban,bill_of_sight_no,bill_of_sight_tp);
