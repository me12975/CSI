
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_bcit009_e01;
-- Compressed: N ;
-- Distributed: Y (hsn_cd,dst_cd,case_source,case_tp,serial_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_bcit009_e01;

CREATE TABLE  oltp.sbd_bcit009_e01 (
hsn_cd varchar(1) NOT NULL,
dst_cd varchar(2) NOT NULL,
sel_case_yy varchar(3) NOT NULL,
sel_case_mm varchar(2) NOT NULL,
case_source varchar(1) NOT NULL,
case_tp varchar(2) NOT NULL,
serial_no varchar(5) NOT NULL,
ban varchar(10) ,
data_e_prd varchar(5) ,
dtn_cr_tax1 decimal(12,0) ,
beh_date varchar(7) ,
inves_bdate varchar(7) ,
dtn_cr_tax2 decimal(12,0) ,
im_prod_nm varchar(60) ,
ban1 varchar(8) ,
pe_amt_tot1 decimal(14,0) ,
ban2 varchar(8) ,
pe_amt_tot2 decimal(14,0) ,
ban3 varchar(8) ,
pe_amt_tot3 decimal(14,0) ,
ban4 varchar(8) ,
pe_amt_tot4 decimal(14,0) ,
ban5 varchar(8) ,
pe_amt_tot5 decimal(14,0) ,
chkp_a0 varchar(1) ,
chkp_a1 varchar(1) ,
chkp_a2 varchar(1) ,
chkp_a3 varchar(1) ,
chkp_b0 varchar(1) ,
chkp_b1 varchar(1) ,
chkp_b2 varchar(1) ,
chkp_b3 varchar(1) ,
chkp_b4 varchar(1) ,
chkp_b5 varchar(1) ,
chkp_c1 varchar(1) ,
chkp_c2 varchar(1) ,
chkp_d0 varchar(1) ,
chkp_d1 varchar(1) ,
chkp_d2 varchar(1) ,
pay_amt_mode_a1 varchar(1) ,
pay_amt_mode_a2 varchar(1) ,
pay_amt_mode_a3 varchar(1) ,
pay_amt_mode_a4 varchar(1) ,
oth_pay_amt_mode varchar(20) ,
pay_amt_mode_b1 varchar(1) ,
pay_amt_mode_b2 varchar(1) ,
pay_amt_mode_b3 varchar(1) ,
flow_expl varchar(160) ,
chk_rslt_mk1 varchar(1) ,
chk_rslt_mk2 varchar(1) ,
sup_pay_tax1 decimal(12,0) ,
untr_prs_amt decimal(14,0) ,
untr_prs_tax decimal(12,0) ,
apl_suple_tax1 decimal(12,0) ,
evd1 decimal(12,0) ,
bhv1 decimal(12,0) ,
chk_rslt_mk3 varchar(1) ,
sup_pay_s_amt decimal(14,0) ,
sup_pay_tax2 decimal(12,0) ,
ztx_s_amt decimal(14,0) ,
sup_pay_tax3 decimal(12,0) ,
evade_s_amt decimal(14,0) ,
evade_tax decimal(12,0) ,
apl_suple_tax2 decimal(12,0) ,
evd2 decimal(12,0) ,
bhv2 decimal(12,0) ,
chk_rslt_mk4 varchar(1) ,
sub_ref decimal(12,0) ,
chk_rslt_mk5 varchar(1) ,
dlv_unit varchar(16) ,
artc1 varchar(80) ,
artc2 varchar(80) ,
artc3 varchar(80) ,
app varchar(80) ,
oth_expl varchar(2000) ,
update_date varchar(7) ,
update_user_cd varchar(8) ,
time_stamp timestamp ,
cstp varchar(2) ,
evd3 decimal(12,0) ,
bhv3 decimal(12,0) ,
upd_stus char(1) ,
stg_upd_time timestamp ,
dlv_docu_char varchar(16) ,
dlv_docu_no varchar(10) ,
false_sale_amt decimal(14,0) ,
false_sale_tax decimal(14,0) ,
sup_pay_amt1 decimal(14,0) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (hsn_cd,dst_cd,case_source,case_tp,serial_no)
;

ALTER TABLE  oltp.sbd_bcit009_e01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_bcit009_e01 ADD CONSTRAINT sbd_bcit009_e01_PK PRIMARY KEY (hsn_cd,dst_cd,sel_case_yy,sel_case_mm,case_source,case_tp,serial_no);
