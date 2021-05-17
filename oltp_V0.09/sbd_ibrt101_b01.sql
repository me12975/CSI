
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_ibrt101_b01;
-- Compressed: N ;
-- Distributed: Y (idn);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_ibrt101_b01;

CREATE TABLE  oltp.sbd_ibrt101_b01 (
idn varchar(10) NOT NULL,
nm varchar(20) ,
born_date varchar(7) ,
hsn_cd varchar(1) NOT NULL,
houhld_addr varchar(80) ,
grdn varchar(20) ,
vrfy_date varchar(7) ,
re_vrfy_date varchar(7) ,
disab_mnu_chno varchar(10) ,
disab_grd_cd varchar(1) ,
death_date varchar(7) ,
user_id_cd varchar(8) NOT NULL,
update_date_time varchar(13) NOT NULL,
org_cd varchar(3) NOT NULL,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (idn)
;

ALTER TABLE  oltp.sbd_ibrt101_b01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_ibrt101_b01 ADD CONSTRAINT sbd_ibrt101_b01_PK PRIMARY KEY (idn);
