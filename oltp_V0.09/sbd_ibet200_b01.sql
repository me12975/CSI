
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_ibet200_b01;
-- Compressed: N ;
-- Distributed: Y (rfn);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_ibet200_b01;

CREATE TABLE  oltp.sbd_ibet200_b01 (
rfn varchar(17) NOT NULL,
iit_tax_rtn_tp varchar(1) ,
iit_ded_cd varchar(1) ,
cal_tax_mode varchar(1) ,
xmp_a_70_pers_cnt decimal(2,0) ,
xmp_b_70_pers_cnt decimal(2,0) ,
disab_pers_cnt decimal(2,0) ,
flg_incm_t decimal(14,0) ,
gene_ded_amt decimal(14,0) ,
slry_ded decimal(14,0) ,
prop_loss_ded decimal(14,0) ,
saving_ded decimal(14,0) ,
flg_incm_n decimal(14,0) ,
flg_tax decimal(14,0) ,
flg_invt_ded_amt decimal(14,0) ,
rebuy_slf_ded decimal(14,0) ,
mlc_tax_ded decimal(14,0) ,
tuition_ded decimal(14,0) ,
wh_tax_tot decimal(14,0) ,
flg_slf_pay decimal(14,0) ,
flg_ref decimal(14,0) ,
invt_credit_mk varchar(1) ,
faf_invt_ctx decimal(14,0) ,
ss_incm_tot decimal(14,0) ,
tps_incm_tot decimal(14,0) ,
slry_incm_tot decimal(14,0) ,
divd_pf_tot decimal(14,0) ,
apl_pt_crd decimal(14,0) ,
ref_batch_tp varchar(1) ,
depo_idn varchar(10) ,
depo_nm varchar(20) ,
bank_cd varchar(7) ,
depo_tp varchar(1) ,
acct_no varchar(14) ,
remit_cd varchar(1) ,
org_cd varchar(3) ,
user_id_cd varchar(8) ,
update_seq_no varchar(3) ,
update_sys_tp varchar(3) ,
update_ctrl_area varchar(2) ,
update_date_time varchar(13) ,
time_stamp timestamp ,
remit_cnvt_gene varchar(1) ,
pay_ref_tp varchar(1) ,
online_mk varchar(1) ,
inq_incm_mk varchar(1) ,
flg_yn_separate varchar(1) ,
acc_case_mk varchar(1) ,
email_addr varchar(40) ,
tel_no varchar(20) ,
mlc_source_incm_tot decimal(14,0) ,
child_edu_ded decimal(14,0) ,
scts_trade_incm_tot decimal(14,0) ,
scts_trade_incm_tax decimal(14,0) ,
flg_law_separate varchar(1) ,
flg_tps_incm_t decimal(14,0) ,
flg_spous_incm_t decimal(14,0) ,
flg_grp_incm_tot decimal(14,0) ,
tps_prop_loss_ded decimal(14,0) ,
ss_prop_loss_ded decimal(14,0) ,
tps_saving_int decimal(14,0) ,
ss_saving_int decimal(14,0) ,
depnt_saving_int decimal(14,0) ,
tps_prop_loss decimal(14,0) ,
ss_prop_loss decimal(14,0) ,
depnt_prop_loss decimal(14,0) ,
tps_prop_incm decimal(14,0) ,
ss_prop_incm decimal(14,0) ,
depnt_prop_incm decimal(14,0) ,
trsf_cmpl_mk varchar(1) ,
sref_n_mk varchar(1) ,
flg_base_live_exp decimal(14,0) ,
flg_base_live_dif decimal(14,0) ,
trp_decl_mk varchar(1) ,
cel_tel_no varchar(13) ,
oth_yn_separate varchar(1) ,
divd_cal_mode varchar(1) ,
divd_tot_amt decimal(14,0) ,
divd_pt_crd decimal(14,0) ,
divd_spr_tax decimal(14,0) ,
tps_divd_incm decimal(14,0) ,
ss_divd_incm decimal(14,0) ,
divd_rebuy_slf_ded decimal(14,0) ,
divd_mlc_tax_ded decimal(14,0) ,
ltc_pers_cnt decimal(2,0) ,
ltc_ded decimal(14,0) ,
tpr_nco_sub_amt decimal(14,0) ,
ss_nco_sub_amt decimal(14,0) ,
depnt_nco_sub_amt decimal(14,0) ,
tot_nco_sub_amt decimal(14,0) ,
mlc_paid_tax decimal(14,0) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (rfn)
;

ALTER TABLE  oltp.sbd_ibet200_b01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_ibet200_b01 ADD CONSTRAINT sbd_ibet200_b01_PK PRIMARY KEY (rfn);
