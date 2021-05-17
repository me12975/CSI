
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_bimt009_h01;
-- Compressed: N ;
-- Distributed: Y (agt_cd,agt_hsn_cd,agt_seq_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_bimt009_h01;

CREATE TABLE  oltp.sbd_bimt009_h01 (
agt_cd varchar(10) NOT NULL,
resp_nm varchar(30) ,
agt_nm varchar(52) ,
addr_hsn_nm varchar(3) ,
addr_town_nm varchar(5) ,
addr_vill_nm varchar(5) ,
addr_lin varchar(5) ,
addr_road_no varchar(50) ,
cntct_nm varchar(30) ,
tel_no varchar(12) ,
tel_no2 varchar(12) ,
fax_no varchar(12) ,
fax_no2 varchar(12) ,
hsn_cd varchar(1) ,
sale_unit_cd varchar(4) ,
update_date varchar(7) ,
update_user_cd varchar(8) ,
time_stamp timestamp ,
agt_hsn_cd varchar(1) NOT NULL,
agt_seq_no varchar(1) NOT NULL,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (agt_cd,agt_hsn_cd,agt_seq_no)
;

ALTER TABLE  oltp.sbd_bimt009_h01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_bimt009_h01 ADD CONSTRAINT sbd_bimt009_h01_PK PRIMARY KEY (agt_cd,agt_hsn_cd,agt_seq_no);
