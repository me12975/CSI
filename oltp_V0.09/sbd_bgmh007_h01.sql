
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_bgmh007_h01;
-- Compressed: N ;
-- Distributed: Y (ban,update_cd);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_bgmh007_h01;

CREATE TABLE  oltp.sbd_bgmh007_h01 (
data_yr varchar(3) NOT NULL,
ban varchar(8) NOT NULL,
appr_use_date varchar(7) ,
delete_use_date varchar(7) ,
hsn_cd varchar(1) ,
invt_tot decimal(14,0) ,
update_id varchar(8) ,
update_date_time varchar(13) NOT NULL,
update_cd varchar(1) NOT NULL,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (ban,update_cd)
;

ALTER TABLE  oltp.sbd_bgmh007_h01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_bgmh007_h01 ADD CONSTRAINT sbd_bgmh007_h01_PK PRIMARY KEY (data_yr,ban,update_date_time,update_cd);
