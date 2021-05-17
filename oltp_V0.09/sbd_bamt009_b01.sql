
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_bamt009_b01;
-- Compressed: N ;
-- Distributed: Y (idn_ban,vat_orgl_cp_no,serial_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_bamt009_b01;

CREATE TABLE  oltp.sbd_bamt009_b01 (
idn_ban varchar(10) NOT NULL,
apl_ym varchar(5) NOT NULL,
vat_orgl_cp_no varchar(10) NOT NULL,
serial_no varchar(2) NOT NULL,
vio_b_date varchar(7) ,
vio_e_date varchar(7) ,
cmpt_cntnt varchar(100) ,
vio_amt decimal(14,0) ,
vio_tax_rate decimal(4,2) ,
vio_tax decimal(12,0) ,
low_dtn_cr_tax decimal(12,0) ,
evade_tax decimal(12,0) ,
keyin_id_cd varchar(8) ,
keyin_date varchar(7) ,
keyin_time varchar(6) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (idn_ban,vat_orgl_cp_no,serial_no)
;

ALTER TABLE  oltp.sbd_bamt009_b01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_bamt009_b01 ADD CONSTRAINT sbd_bamt009_b01_PK PRIMARY KEY (idn_ban,apl_ym,vat_orgl_cp_no,serial_no);
