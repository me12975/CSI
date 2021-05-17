
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_ptit008_h01;
-- Compressed: N ;
-- Distributed: Y (payment_unit_ban,seq_no,item_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_ptit008_h01;

CREATE TABLE  oltp.sbd_ptit008_h01 (
payment_unit_ban varchar(8) NOT NULL,
seq_no varchar(4) NOT NULL,
item_no varchar(4) NOT NULL,
payment_incm_tp varchar(1) ,
payment_incm_yr varchar(3) ,
payment_b_date varchar(7) ,
payment_e_date varchar(7) ,
payment_date varchar(7) ,
payment_mode varchar(1) ,
payment_amt decimal(14;0) ,
currency_tp varchar(2) ,
oth_currency_nm varchar(20) ,
payment_pay_mode varchar(1) ,
oth_pay_mode varchar(100) ,
payment_pay_tax decimal(14;0) ,
keyin_id_cd varchar(8) ,
keyin_date varchar(7) ,
update_user_cd varchar(8) ,
update_date varchar(7) ,
time_stamp timestamp ,
vltn_mode varchar(1) ,
oth_vltn_mode varchar(500) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (payment_unit_ban,seq_no,item_no)
;

ALTER TABLE  oltp.sbd_ptit008_h01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_ptit008_h01 ADD CONSTRAINT sbd_ptit008_h01_PK PRIMARY KEY (payment_unit_ban,seq_no,item_no);
