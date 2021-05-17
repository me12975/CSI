
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_ibet700_d01;
-- Compressed: N ;
-- Distributed: Y (rfn,pers_idn);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_ibet700_d01;

CREATE TABLE  oltp.sbd_ibet700_d01 (
rfn varchar(17) NOT NULL,
pers_idn varchar(10) NOT NULL,
pers_nm varchar(20) ,
id_cd varchar(1) ,
born_yr varchar(3) ,
id_tp varchar(1) ,
dup_mk varchar(1) ,
dup_rfn varchar(17) ,
bill_batch_tp varchar(1) ,
seq_no varchar(2) NOT NULL,
yn_edu varchar(1) ,
edu_ded_amt decimal(14,0) ,
yn_resd varchar(1) ,
disab_mk varchar(1) ,
fmly_vlne_mk varchar(1) ,
idn_err_mk varchar(1) ,
org_cd varchar(3) ,
user_id_cd varchar(8) ,
update_seq_no varchar(3) ,
update_sys_tp varchar(3) ,
update_ctrl_area varchar(2) ,
update_date_time varchar(13) ,
time_stamp timestamp ,
coll_mk varchar(1) ,
spr_mrg_mk varchar(1) ,
cmp_mk varchar(1) ,
force_mk varchar(1) ,
notes varchar(50) ,
apl_scts_trade_incm decimal(14,0) ,
nm_err_mk varchar(1) ,
scts_flg_mk varchar(1) ,
tax_avoid_mk varchar(1) ,
avoid_scts_incm decimal(14,0) ,
agent_depnt_mk varchar(1) ,
yn_ltc varchar(1) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (rfn,pers_idn)
;

ALTER TABLE  oltp.sbd_ibet700_d01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_ibet700_d01 ADD CONSTRAINT sbd_ibet700_d01_PK PRIMARY KEY (rfn,pers_idn,seq_no);
