
-- Schema:  prestage; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Prestage資料表;
-- Table: sbd_ibet100_prestage;
-- Compressed: N ;
-- Distributed: Y (rfn);
-- Partition: Y (data_exch_date);
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  prestage.sbd_ibet100_prestage;

CREATE TABLE  prestage.sbd_ibet100_prestage (
rfn varchar(17) ,
rfn_data_yr varchar(3) ,
rfn_data_tp varchar(3) ,
rfn_org_cd varchar(3) ,
rfn_ctrl_area varchar(2) ,
rfn_box_no varchar(3) ,
rfn_book_no varchar(1) ,
rfn_page_no varchar(2) ,
cal_tax_mode varchar(1) ,
fam_rate decimal(3,1) ,
slry_spr_rate decimal(3,1) ,
xmp_a_70_pers_cnt decimal(2,0) ,
xmp_b_70_pers_cnt decimal(2,0) ,
apl_incm_t decimal(14,0) ,
gene_ded_amt decimal(14,0) ,
slry_ded decimal(14,0) ,
prop_loss_ded decimal(14,0) ,
saving_ded decimal(14,0) ,
disab_pers_cnt decimal(2,0) ,
tuition_ded decimal(14,0) ,
apl_incm_n decimal(14,0) ,
apl_tax decimal(14,0) ,
apl_invt_ded_amt decimal(14,0) ,
rebuy_slf_ded decimal(14,0) ,
mlc_tax_ded decimal(14,0) ,
apl_divd_pf_tot decimal(14,0) ,
apl_pt_crd decimal(14,0) ,
apl_incm_wh_tax decimal(14,0) ,
tps_incm_tot decimal(14,0) ,
ss_incm_tot decimal(14,0) ,
flg_slf_pay_tax decimal(14,0) ,
sh_sup_ref decimal(14,0) ,
paid_sup_tax decimal(14,0) ,
refd_tax decimal(14,0) ,
zst_sh_sup_ref decimal(14,0) ,
orgl_cp_no varchar(10) ,
iit_adj_reas varchar(14) ,
coll_mk varchar(1) ,
pr_mk varchar(1) ,
slf_pay_nq_mk varchar(1) ,
in_out_upd_mk varchar(1) ,
mnl_conf_vio varchar(1) ,
remit_cd varchar(1) ,
iit_upd_reas_cd varchar(1) ,
incm_adj varchar(1) ,
xmp_adj varchar(1) ,
ded_adj varchar(1) ,
cmpt_scope_adj varchar(1) ,
oth varchar(1) ,
dl_pay_date varchar(7) ,
reply_mk varchar(1) ,
reply_hsn_org varchar(5) ,
trf_out_hsn_org varchar(5) ,
py_mrg_rfn varchar(17) ,
spr_paid_mk varchar(1) ,
pfs_mk varchar(1) ,
extend_reas_cd varchar(1) ,
extend_date varchar(7) ,
sml_coll_mk varchar(1) ,
apl_int decimal(14,0) ,
unpaid_cd varchar(1) ,
unpaid_tax varchar(7) ,
slf_pay_paid_idn varchar(10) ,
slf_pay_paid_amt decimal(14,0) ,
invt_credit_mk varchar(1) ,
prop_wh_chk_mk varchar(1) ,
iit_abnor_pr_mk varchar(13) ,
vio_mk varchar(1) ,
adm_rmd_mk varchar(1) ,
asg_mk varchar(1) ,
adm_rmd_stus varchar(1) ,
dly_pay_amt decimal(14,0) ,
adm_rmd_int decimal(14,0) ,
upd_mk varchar(1) ,
haddr_hsn_cd varchar(1) ,
haddr_town_cd varchar(2) ,
haddr_vill_cd varchar(2) ,
haddr_hsn_nm varchar(3) ,
haddr_town_nm varchar(5) ,
haddr_vill_nm varchar(5) ,
haddr_lin varchar(5) ,
haddr_road_no varchar(25) ,
caddr_hsn_cd varchar(1) ,
caddr_town_cd varchar(2) ,
caddr_vill_cd varchar(2) ,
caddr_hsn_nm varchar(3) ,
caddr_town_nm varchar(5) ,
caddr_vill_nm varchar(5) ,
caddr_lin varchar(5) ,
caddr_road_no varchar(25) ,
addr_incon_mk varchar(1) ,
apl_pr_mk varchar(1) ,
force_mk varchar(1) ,
org_cd varchar(3) ,
user_id_cd varchar(8) ,
update_ctrl_area varchar(2) ,
update_seq_no varchar(3) ,
update_sys_tp varchar(3) ,
update_date_time varchar(13) ,
update_user_id_nm varchar(20) ,
time_stamp timestamp ,
dup_mk varchar(1) ,
cal_int_mk varchar(1) ,
cal_int_b_date varchar(7) ,
adj_mk varchar(13) ,
bill_batch_tp varchar(1) ,
lse_incm_mk varchar(1) ,
lc_sc_mk varchar(1) ,
prof_mk varchar(1) ,
chk_suc_mk varchar(1) ,
suc_mk varchar(1) ,
suc_suc_mk varchar(1) ,
bl_town_cd varchar(2) ,
refd_mk varchar(1) ,
base_tax_mk varchar(1) ,
sel_case_mk varchar(1) ,
sel_case varchar(7) ,
death_date varchar(7) ,
special_case varchar(1) ,
base_tax_coll_mk varchar(1) ,
flg_date varchar(7) ,
apl_ylmt varchar(1) ,
notes varchar(50) ,
tax_rate1 decimal(2,0) ,
tax_rate2 decimal(2,0) ,
tax_rate3 decimal(2,0) ,
tax_rate4 decimal(2,0) ,
tax_rate5 decimal(2,0) ,
apcb_incm_amt1 decimal(14,0) ,
apcb_incm_amt2 decimal(14,0) ,
apcb_incm_amt3 decimal(14,0) ,
apcb_incm_amt4 decimal(14,0) ,
apcb_incm_amt5 decimal(14,0) ,
child_edu_pers_cnt decimal(2,0) ,
child_edu_ded decimal(14,0) ,
scts_trade_incm_tot decimal(14,0) ,
scts_trade_incm_tax decimal(14,0) ,
flg_tps_incm_t decimal(14,0) ,
flg_spous_incm_t decimal(14,0) ,
tps_prop_loss_ded decimal(14,0) ,
ss_prop_loss_ded decimal(14,0) ,
tps_saving_int decimal(14,0) ,
ss_saving_int decimal(14,0) ,
depnt_saving_int decimal(14,0) ,
tps_prop_loss decimal(14) ,
ss_prop_loss decimal(14) ,
depnt_prop_loss decimal(14) ,
tps_prop_incm decimal(14) ,
ss_prop_incm decimal(14) ,
depnt_prop_incm decimal(14) ,
mrg_ref_2 varchar(1) ,
mrg_ref_4 varchar(1) ,
exam_upd_unit_cd varchar(5) ,
exam_upd_date varchar(7) ,
special_mk varchar(1) ,
apl_base_live_exp decimal(14) ,
apl_base_live_dif decimal(14) ,
tax_avoid_mk varchar(1) ,
divd_cal_mode varchar(1) ,
divd_tot_amt decimal(14,0) ,
divd_pt_crd decimal(14,0) ,
divd_spr_tax decimal(14,0) ,
tps_divd_incm decimal(14,0) ,
ss_divd_incm decimal(14,0) ,
ntf_date varchar(7) ,
divd_rebuy_slf_ded decimal(14,0) ,
divd_mlc_tax_ded decimal(14,0) ,
ltc_pers_cnt decimal(2) ,
ltc_ded decimal(14) ,
tpr_nco_sub_amt decimal(14) ,
ss_nco_sub_amt decimal(14) ,
depnt_nco_sub_amt decimal(14) ,
tot_nco_sub_amt decimal(14) ,
abnor_mk varchar(12) ,
mrg_ref_3 varchar(1) ,
unflg_yn_separate varchar(1) ,
inves_bdate varchar(7) ,
rebuy_ref_type varchar(1) ,
separate_inform_mk varchar(1) ,
stage_upd_stus char(1) NOT NULL,
data_update_time timestamp NOT NULL,
data_exch_date date NOT NULL)
TABLESPACE sbd 
DISTRIBUTED BY (rfn)
PARTITION BY RANGE (data_exch_date) 
(
PARTITION P202101 START ('2021-01-01'::date) END ('2021-02-01'::date)
,PARTITION P202102 START ('2021-02-01'::date) END ('2021-03-01'::date)
,PARTITION P202103 START ('2021-03-01'::date) END ('2021-04-01'::date)
,PARTITION P202104 START ('2021-04-01'::date) END ('2021-05-01'::date)
,PARTITION P202105 START ('2021-05-01'::date) END ('2021-06-01'::date)
,PARTITION P202106 START ('2021-06-01'::date) END ('2021-07-01'::date)
,PARTITION P202107 START ('2021-07-01'::date) END ('2021-08-01'::date)
,PARTITION P202108 START ('2021-08-01'::date) END ('2021-09-01'::date)
,PARTITION P202109 START ('2021-09-01'::date) END ('2021-10-01'::date)
,PARTITION P202110 START ('2021-10-01'::date) END ('2021-11-01'::date)
,PARTITION P202111 START ('2021-11-01'::date) END ('2021-12-01'::date)
,PARTITION P202112 START ('2021-12-01'::date) END ('2022-01-01'::date)
,PARTITION P202201 START ('2022-01-01'::date) END ('2022-02-01'::date)
,PARTITION P202202 START ('2022-02-01'::date) END ('2022-03-01'::date)
,PARTITION P202203 START ('2022-03-01'::date) END ('2022-04-01'::date)
,PARTITION P202204 START ('2022-04-01'::date) END ('2022-05-01'::date)
,PARTITION P202205 START ('2022-05-01'::date) END ('2022-06-01'::date)
,PARTITION P202206 START ('2022-06-01'::date) END ('2022-07-01'::date)
,PARTITION P202207 START ('2022-07-01'::date) END ('2022-08-01'::date)
,PARTITION P202208 START ('2022-08-01'::date) END ('2022-09-01'::date)
,PARTITION P202209 START ('2022-09-01'::date) END ('2022-10-01'::date)
,PARTITION P202210 START ('2022-10-01'::date) END ('2022-11-01'::date)
,PARTITION P202211 START ('2022-11-01'::date) END ('2022-12-01'::date)
,PARTITION P202212 START ('2022-12-01'::date) END ('2023-01-01'::date)
,PARTITION P202301 START ('2023-01-01'::date) END ('2023-02-01'::date)
,PARTITION P202302 START ('2023-02-01'::date) END ('2023-03-01'::date)
,PARTITION P202303 START ('2023-03-01'::date) END ('2023-04-01'::date)
,PARTITION P202304 START ('2023-04-01'::date) END ('2023-05-01'::date)
,PARTITION P202305 START ('2023-05-01'::date) END ('2023-06-01'::date)
,PARTITION P202306 START ('2023-06-01'::date) END ('2023-07-01'::date)
,PARTITION P202307 START ('2023-07-01'::date) END ('2023-08-01'::date)
,PARTITION P202308 START ('2023-08-01'::date) END ('2023-09-01'::date)
,PARTITION P202309 START ('2023-09-01'::date) END ('2023-10-01'::date)
,PARTITION P202310 START ('2023-10-01'::date) END ('2023-11-01'::date)
,PARTITION P202311 START ('2023-11-01'::date) END ('2023-12-01'::date)
,PARTITION P202312 START ('2023-12-01'::date) END ('2024-01-01'::date)
,PARTITION P202401 START ('2024-01-01'::date) END ('2024-02-01'::date)
,PARTITION P202402 START ('2024-02-01'::date) END ('2024-03-01'::date)
,PARTITION P202403 START ('2024-03-01'::date) END ('2024-04-01'::date)
,PARTITION P202404 START ('2024-04-01'::date) END ('2024-05-01'::date)
,PARTITION P202405 START ('2024-05-01'::date) END ('2024-06-01'::date)
,PARTITION P202406 START ('2024-06-01'::date) END ('2024-07-01'::date)
,PARTITION P202407 START ('2024-07-01'::date) END ('2024-08-01'::date)
,PARTITION P202408 START ('2024-08-01'::date) END ('2024-09-01'::date)
,PARTITION P202409 START ('2024-09-01'::date) END ('2024-10-01'::date)
,PARTITION P202410 START ('2024-10-01'::date) END ('2024-11-01'::date)
,PARTITION P202411 START ('2024-11-01'::date) END ('2024-12-01'::date)
,PARTITION P202412 START ('2024-12-01'::date) END ('2025-01-01'::date)
,PARTITION P202501 START ('2025-01-01'::date) END ('2025-02-01'::date)
,PARTITION P202502 START ('2025-02-01'::date) END ('2025-03-01'::date)
,PARTITION P202503 START ('2025-03-01'::date) END ('2025-04-01'::date)
,PARTITION P202504 START ('2025-04-01'::date) END ('2025-05-01'::date)
,PARTITION P202505 START ('2025-05-01'::date) END ('2025-06-01'::date)
,PARTITION P202506 START ('2025-06-01'::date) END ('2025-07-01'::date)
,PARTITION P202507 START ('2025-07-01'::date) END ('2025-08-01'::date)
,PARTITION P202508 START ('2025-08-01'::date) END ('2025-09-01'::date)
,PARTITION P202509 START ('2025-09-01'::date) END ('2025-10-01'::date)
,PARTITION P202510 START ('2025-10-01'::date) END ('2025-11-01'::date)
,PARTITION P202511 START ('2025-11-01'::date) END ('2025-12-01'::date)
,PARTITION P202512 START ('2025-12-01'::date) END ('2026-01-01'::date)
,PARTITION P202601 START ('2026-01-01'::date) END ('2026-02-01'::date)
,PARTITION P202602 START ('2026-02-01'::date) END ('2026-03-01'::date)
,PARTITION P202603 START ('2026-03-01'::date) END ('2026-04-01'::date)
,PARTITION P202604 START ('2026-04-01'::date) END ('2026-05-01'::date)
,PARTITION P202605 START ('2026-05-01'::date) END ('2026-06-01'::date)
,PARTITION P202606 START ('2026-06-01'::date) END ('2026-07-01'::date)
,PARTITION P202607 START ('2026-07-01'::date) END ('2026-08-01'::date)
,PARTITION P202608 START ('2026-08-01'::date) END ('2026-09-01'::date)
,PARTITION P202609 START ('2026-09-01'::date) END ('2026-10-01'::date)
,PARTITION P202610 START ('2026-10-01'::date) END ('2026-11-01'::date)
,PARTITION P202611 START ('2026-11-01'::date) END ('2026-12-01'::date)
,PARTITION P202612 START ('2026-12-01'::date) END ('2027-01-01'::date)
,PARTITION P202701 START ('2027-01-01'::date) END ('2027-02-01'::date)
,PARTITION P202702 START ('2027-02-01'::date) END ('2027-03-01'::date)
,PARTITION P202703 START ('2027-03-01'::date) END ('2027-04-01'::date)
,PARTITION P202704 START ('2027-04-01'::date) END ('2027-05-01'::date)
,PARTITION P202705 START ('2027-05-01'::date) END ('2027-06-01'::date)
,PARTITION P202706 START ('2027-06-01'::date) END ('2027-07-01'::date)
,PARTITION P202707 START ('2027-07-01'::date) END ('2027-08-01'::date)
,PARTITION P202708 START ('2027-08-01'::date) END ('2027-09-01'::date)
,PARTITION P202709 START ('2027-09-01'::date) END ('2027-10-01'::date)
,PARTITION P202710 START ('2027-10-01'::date) END ('2027-11-01'::date)
,PARTITION P202711 START ('2027-11-01'::date) END ('2027-12-01'::date)
,PARTITION P202712 START ('2027-12-01'::date) END ('2028-01-01'::date)
,PARTITION P202801 START ('2028-01-01'::date) END ('2028-02-01'::date)
,PARTITION P202802 START ('2028-02-01'::date) END ('2028-03-01'::date)
,PARTITION P202803 START ('2028-03-01'::date) END ('2028-04-01'::date)
,PARTITION P202804 START ('2028-04-01'::date) END ('2028-05-01'::date)
,PARTITION P202805 START ('2028-05-01'::date) END ('2028-06-01'::date)
,PARTITION P202806 START ('2028-06-01'::date) END ('2028-07-01'::date)
,PARTITION P202807 START ('2028-07-01'::date) END ('2028-08-01'::date)
,PARTITION P202808 START ('2028-08-01'::date) END ('2028-09-01'::date)
,PARTITION P202809 START ('2028-09-01'::date) END ('2028-10-01'::date)
,PARTITION P202810 START ('2028-10-01'::date) END ('2028-11-01'::date)
,PARTITION P202811 START ('2028-11-01'::date) END ('2028-12-01'::date)
,PARTITION P202812 START ('2028-12-01'::date) END ('2029-01-01'::date)
,PARTITION P202901 START ('2029-01-01'::date) END ('2029-02-01'::date)
,PARTITION P202902 START ('2029-02-01'::date) END ('2029-03-01'::date)
,PARTITION P202903 START ('2029-03-01'::date) END ('2029-04-01'::date)
,PARTITION P202904 START ('2029-04-01'::date) END ('2029-05-01'::date)
,PARTITION P202905 START ('2029-05-01'::date) END ('2029-06-01'::date)
,PARTITION P202906 START ('2029-06-01'::date) END ('2029-07-01'::date)
,PARTITION P202907 START ('2029-07-01'::date) END ('2029-08-01'::date)
,PARTITION P202908 START ('2029-08-01'::date) END ('2029-09-01'::date)
,PARTITION P202909 START ('2029-09-01'::date) END ('2029-10-01'::date)
,PARTITION P202910 START ('2029-10-01'::date) END ('2029-11-01'::date)
,PARTITION P202911 START ('2029-11-01'::date) END ('2029-12-01'::date)
,PARTITION P202912 START ('2029-12-01'::date) END ('2030-01-01'::date)
,PARTITION P203001 START ('2030-01-01'::date) END ('2030-02-01'::date)
,PARTITION P203002 START ('2030-02-01'::date) END ('2030-03-01'::date)
,PARTITION P203003 START ('2030-03-01'::date) END ('2030-04-01'::date)
,PARTITION P203004 START ('2030-04-01'::date) END ('2030-05-01'::date)
,PARTITION P203005 START ('2030-05-01'::date) END ('2030-06-01'::date)
,PARTITION P203006 START ('2030-06-01'::date) END ('2030-07-01'::date)
,PARTITION P203007 START ('2030-07-01'::date) END ('2030-08-01'::date)
,PARTITION P203008 START ('2030-08-01'::date) END ('2030-09-01'::date)
,PARTITION P203009 START ('2030-09-01'::date) END ('2030-10-01'::date)
,PARTITION P203010 START ('2030-10-01'::date) END ('2030-11-01'::date)
,PARTITION P203011 START ('2030-11-01'::date) END ('2030-12-01'::date)
,PARTITION P203012 START ('2030-12-01'::date) END ('2031-01-01'::date)
,DEFAULT PARTITION others
  );

ALTER TABLE  prestage.sbd_ibet100_prestage OWNER TO ap_sbd;
