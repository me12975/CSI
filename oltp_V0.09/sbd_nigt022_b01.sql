
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_nigt022_b01;
-- Compressed: N ;
-- Distributed: Y (dlv_unit,tax_cd,flg_tp,serial_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_nigt022_b01;

CREATE TABLE  oltp.sbd_nigt022_b01 (
dlv_unit varchar(3) ,
tax_cd varchar(2) ,
dlv_yr varchar(3) ,
flg_tp varchar(1) ,
serial_no varchar(5) ,
para_tp varchar(5) ,
pnsh_tp varchar(5) ,
seize_unit_nm varchar(60) ,
cc_unit1 varchar(4) ,
cc_unit2 varchar(4) ,
cc_unit3 varchar(4) ,
hdwn_unit1 varchar(4) ,
hdwn_unit2 varchar(4) ,
hdwn_unit3 varchar(4) ,
evdc1 decimal(2,0) ,
evdc2 decimal(2,0) ,
evdc3 decimal(2,0) ,
evdc4 decimal(2,0) ,
oth_evdc1 varchar(160) ,
oth_evdc2 varchar(160) ,
oth_evdc3 varchar(160) ,
pnsh_fine_amt decimal(14,0) ,
yn_arrg_mtg varchar(1) ,
dcd_lvl varchar(1) ,
report_no varchar(12) ,
co_nm varchar(52) ,
co_addr varchar(80) ,
resp_addr varchar(80) ,
update_user_cd varchar(8) ,
update_date_time varchar(15) ,
time_stamp timestamp ,
org_tp varchar(1) ,
user_id varchar(8) ,
update_date varchar(7) ,
lqdt_mk varchar(1) ,
vio_fact1 varchar(1600) ,
vio_fact2 varchar(1600) ,
adt_sgst1 varchar(1600) ,
adt_sgst2 varchar(1600) ,
adt_sgst3 varchar(1600) ,
adt_sgst4 varchar(1600) ,
adt_sgst5 varchar(1600) ,
adt_sgst6 varchar(1600) ,
ft_mk varchar(1) ,
op_mk varchar(1) ,
cmpt_method varchar(1600) ,
sup_pay_mk varchar(1) ,
para_tp_ver varchar(3) ,
vio_fact3 varchar(1600) ,
avoid_vio_fact varchar(1600) ,
vio_duty varchar(1600) ,
mltp_list_no4_mk varchar(1) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (dlv_unit,tax_cd,flg_tp,serial_no)
;

ALTER TABLE  oltp.sbd_nigt022_b01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_nigt022_b01 ADD CONSTRAINT sbd_nigt022_b01_PK PRIMARY KEY (dlv_unit,tax_cd,dlv_yr,flg_tp,serial_no);
