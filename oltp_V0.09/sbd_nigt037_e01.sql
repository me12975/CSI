
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_nigt037_e01;
-- Compressed: N ;
-- Distributed: Y (suit_artc_cd);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_nigt037_e01;

CREATE TABLE  oltp.sbd_nigt037_e01 (
suit_artc_cd varchar(7) NOT NULL,
suit_artc_nm varchar(140) ,
acu_mk varchar(1) ,
suit_artc_cntnt varchar(500) ,
time_stamp timestamp ,
update_cd varchar(2) ,
user_id varchar(8) ,
update_date varchar(7) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (suit_artc_cd)
;

ALTER TABLE  oltp.sbd_nigt037_e01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_nigt037_e01 ADD CONSTRAINT sbd_nigt037_e01_PK PRIMARY KEY (suit_artc_cd);
