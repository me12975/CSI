
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_nigt065_b01;
-- Compressed: N ;
-- Distributed: Y (dlv_unit,tax_cd,flg_tp,serial_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_nigt065_b01;

CREATE TABLE  oltp.sbd_nigt065_b01 (
dlv_unit varchar(3) NOT NULL,
tax_cd varchar(2) NOT NULL,
dlv_yr varchar(3) NOT NULL,
flg_tp varchar(1) NOT NULL,
serial_no varchar(5) NOT NULL,
date1 varchar(7) ,
date2 varchar(7) ,
date3 varchar(7) ,
date4 varchar(7) ,
kd_cntnt varchar(80) ,
amt1 decimal(12,2) ,
amt2 decimal(12,2) ,
amt3 decimal(12,2) ,
amt4 decimal(12,2) ,
amt5 decimal(12,2) ,
amt6 decimal(12,2) ,
amt7 decimal(12,2) ,
amt8 decimal(12,2) ,
amt9 decimal(12,2) ,
amt10 decimal(12,2) ,
acu_artc1_tms decimal(4,0) ,
acu_artc2_tms decimal(4,0) ,
acu_artc3_tms decimal(4,0) ,
acu_artc4_tms decimal(4,0) ,
jdgf_mltp decimal(7,2) ,
evade_incm decimal(14,0) ,
evade_tax decimal(14,0) ,
beh_amt decimal(14,0) ,
vio_fact1 varchar(1600) ,
vio_fact2 varchar(1600) ,
adt_sgst1 varchar(1600) ,
adt_sgst2 varchar(1600) ,
adt_sgst3 varchar(1600) ,
adt_sgst4 varchar(1600) ,
cmpt_amt1 decimal(14,0) ,
cmpt_amt2 decimal(14,0) ,
cmpt_amt3 decimal(14,0) ,
cmpt_amt4 decimal(14,0) ,
cmpt_amt5 decimal(14,0) ,
cmpt_amt6 decimal(14,0) ,
cmpt_amt7 decimal(14,0) ,
cmpt_amt8 decimal(14,0) ,
cmpt_amt9 decimal(14,0) ,
cmpt_amt10 decimal(14,0) ,
tax_pay_docu_mk varchar(1) ,
ntf_iit_mk varchar(1) ,
ntf_pfs_mk varchar(1) ,
update_user_cd varchar(8) ,
update_date_time varchar(15) ,
time_stamp timestamp ,
lqdt_mk varchar(1) ,
vio_fact3 varchar(1600) ,
upd_reas varchar(120) ,
o_pnsh_no varchar(60) ,
o_evade_tax decimal(14,0) ,
o_pnsh_fine_amt decimal(14,0) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (dlv_unit,tax_cd,flg_tp,serial_no)
;

ALTER TABLE  oltp.sbd_nigt065_b01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_nigt065_b01 ADD CONSTRAINT sbd_nigt065_b01_PK PRIMARY KEY (dlv_unit,tax_cd,dlv_yr,flg_tp,serial_no);
