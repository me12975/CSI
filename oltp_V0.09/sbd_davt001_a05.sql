
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_davt001_a05;
-- Compressed: N ;
-- Distributed: Y (heired_idn);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_davt001_a05;

CREATE TABLE  oltp.sbd_davt001_a05 (
heired_idn varchar(10) NOT NULL,
heired_nm varchar(20) ,
death_date varchar(7) ,
hdaddr_hsn_nm varchar(3) ,
hdaddr_town_nm varchar(5) ,
hdaddr_vill_nm varchar(5) ,
hdaddr_lin varchar(5) ,
hdaddr_road_no varchar(50) ,
tpr_idn varchar(10) ,
tpr_nm varchar(20) ,
tpr_addr_hsn_nm varchar(3) ,
tpr_addr_town_nm varchar(5) ,
tpr_addr_vill_nm varchar(5) ,
tpr_addr_lin varchar(5) ,
tpr_addr_road_no varchar(50) ,
zip_cd varchar(5) ,
inher_manager_mk varchar(1) ,
spous_idn varchar(10) ,
spous_nm varchar(20) ,
heired_relation varchar(1) ,
marriage_stus varchar(1) ,
prop_serial_no varchar(4) ,
time_stamp timestamp ,
roma_heired_nm varchar(30) ,
roma_tpr_nm varchar(30) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (heired_idn)
;

ALTER TABLE  oltp.sbd_davt001_a05 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_davt001_a05 ADD CONSTRAINT sbd_davt001_a05_PK PRIMARY KEY (heired_idn);
