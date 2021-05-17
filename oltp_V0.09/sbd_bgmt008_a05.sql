
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_bgmt008_a05;
-- Compressed: N ;
-- Distributed: Y (ban,partner_idn);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_bgmt008_a05;

CREATE TABLE  oltp.sbd_bgmt008_a05 (
ban varchar(8) NOT NULL,
partner_idn varchar(10) NOT NULL,
data_yr varchar(3) NOT NULL,
partner_serial_no varchar(2) ,
resp_mk varchar(1) ,
invt_amt decimal(14,0) ,
id_cd varchar(1) ,
chi_nm varchar(20) ,
update_id varchar(8) ,
update_date_time timestamp ,
update_cd varchar(1) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (ban,partner_idn)
;

ALTER TABLE  oltp.sbd_bgmt008_a05 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_bgmt008_a05 ADD CONSTRAINT sbd_bgmt008_a05_PK PRIMARY KEY (ban,partner_idn,data_yr);
