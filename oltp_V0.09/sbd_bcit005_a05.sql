
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_bcit005_a05;
-- Compressed: N ;
-- Distributed: Y (org_group,hsn_cd,dst_cd,proj_cd);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_bcit005_a05;

CREATE TABLE  oltp.sbd_bcit005_a05 (
org_group varchar(2) NOT NULL,
hsn_cd varchar(1) NOT NULL,
dst_cd varchar(2) NOT NULL,
time_stamp timestamp ,
org_seq varchar(2) ,
proj_cd varchar(1) NOT NULL,
upd_stus char(1) ,
stg_upd_time timestamp ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (org_group,hsn_cd,dst_cd,proj_cd)
;

ALTER TABLE  oltp.sbd_bcit005_a05 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_bcit005_a05 ADD CONSTRAINT sbd_bcit005_a05_PK PRIMARY KEY (org_group,hsn_cd,dst_cd,proj_cd);
