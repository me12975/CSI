
-- Schema:  prestage; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Prestage資料表;
-- Table: sbd_irct200_prestage;
-- Compressed: N ;
-- Distributed: Y (tpr_idn,rfn);
-- Partition: Y (data_exch_date);
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  prestage.sbd_irct200_prestage;

CREATE TABLE  prestage.sbd_irct200_prestage (
rfn_data_yr varchar(3) ,
rfn_data_tp varchar(3) ,
rfn_org_cd varchar(3) ,
rfn_ctrl_area varchar(2) ,
rfn_box_no varchar(3) ,
rfn_book_no varchar(1) ,
rfn_page_no varchar(2) ,
iit_tax_rtn_tp varchar(1) ,
tpr_idn varchar(10) ,
tpr_nm varchar(20) ,
tpr_born_yy varchar(3) ,
tpr_disab_mk varchar(1) ,
tpr_err_mk varchar(1) ,
spous_idn varchar(10) ,
spous_nm varchar(20) ,
spous_born_yy varchar(3) ,
spous_disab_mk varchar(1) ,
spous_id_tp varchar(1) ,
spous_err_mk varchar(1) ,
haddr_hsn_cd varchar(1) ,
haddr_town_cd varchar(2) ,
haddr_vill_cd varchar(2) ,
haddr_hsn_nm varchar(3) ,
haddr_town_nm varchar(5) ,
haddr_vill_nm varchar(5) ,
haddr_lin varchar(5) ,
haddr_road_no varchar(25) ,
haddr_road_no_no varchar(8) ,
caddr_hsn_cd varchar(1) ,
caddr_town_cd varchar(2) ,
caddr_vill_cd varchar(2) ,
caddr_hsn_nm varchar(3) ,
caddr_town_nm varchar(5) ,
caddr_vill_nm varchar(5) ,
caddr_lin varchar(5) ,
caddr_road_no varchar(25) ,
caddr_road_no_no varchar(8) ,
addr_incon_mk varchar(1) ,
rent_mk varchar(1) ,
tel_no_day varchar(13) ,
tel_no_night varchar(13) ,
tel_ext_no varchar(6) ,
paste_mk varchar(1) ,
slry_pers_cnt varchar(1) ,
xmp_a_70_pers_cnt decimal(2) ,
xmp_b_70_pers_cnt decimal(2) ,
disab_pers_cnt decimal(2) ,
slry_cd varchar(1) ,
int_cd varchar(1) ,
pfs_cd varchar(1) ,
prop_trade_cd varchar(1) ,
add_chi_edit varchar(1) ,
iit_ded_cd varchar(1) ,
cal_tax_mode varchar(1) ,
flg_incm_t decimal(14) ,
flg_ded_tot decimal(14) ,
flg_ss_incm_tot decimal(14) ,
flg_incm_n decimal(14) ,
flg_tax decimal(14) ,
invt_credit_mk varchar(1) ,
flg_invt_ded_amt decimal(14) ,
faf_invt_ctx decimal(14) ,
rebuy_slf_ded decimal(14) ,
wh_tax_tot decimal(14) ,
pt_crd decimal(14) ,
mlc_tax_ded decimal(14) ,
flg_ref decimal(14) ,
flg_slf_pay decimal(14) ,
apl_incm_n decimal(14) ,
apl_tax decimal(14) ,
iit_ref_book_cd varchar(10) ,
unpaid_tax decimal(14) ,
apl_sup_ref decimal(14) ,
depo_idn varchar(10) ,
depo_nm varchar(20) ,
bank_cd varchar(7) ,
post_office_cd varchar(7) ,
depo_tp varchar(1) ,
acct_no varchar(14) ,
remit_cd varchar(1) ,
remit_data_same_ly varchar(1) ,
create_batch_tp varchar(3) ,
ref_batch_tp varchar(1) ,
upd_tms varchar(2) ,
act_sup_ref_amt decimal(14) ,
unpaid_cd varchar(1) ,
online_mk varchar(1) ,
rtn_bank varchar(7) ,
trsf_mk varchar(1) ,
recev_date varchar(7) ,
pay_ref_mk varchar(1) ,
remit_cnvt_gene varchar(1) ,
dup_tpr_idn_mk varchar(1) ,
tax_rtn_proc_stus varchar(1) ,
delete_reas varchar(20) ,
recev_no varchar(9) ,
ref_date varchar(7) ,
trf_in_mk varchar(1) ,
add_case_mk varchar(1) ,
keyin_id_cd varchar(8) ,
verify_id_cd varchar(8) ,
chi_keyin_id_cd varchar(8) ,
chi_verify_id_cd varchar(8) ,
org_cd varchar(3) ,
user_id_cd varchar(8) ,
update_date_time varchar(13) ,
rfn varchar(17) ,
pay_ref_tp varchar(1) ,
tpr_idn_cmp_mk varchar(1) ,
spous_idn_cmp_mk varchar(1) ,
depnt_idn_cmp_mk varchar(1) ,
haddr_cmp_mk varchar(1) ,
rfn_chk_no varchar(1) ,
bl_town_cd varchar(2) ,
flg_yn_separate varchar(1) ,
iit_adj_reas varchar(14) ,
crdhldr_idn varchar(10) ,
auth_date varchar(7) ,
auth_no varchar(6) ,
prop_act_trade_mk varchar(1) ,
lse_list_exp_mk varchar(1) ,
remark varchar(20) ,
acc_case_mk varchar(1) ,
mlc_source_incm_tot decimal(14) ,
net_flg_app_mk varchar(1) ,
flg_dtl varchar(1) ,
ext_pay_mk varchar(1) ,
email_addr varchar(40) ,
ref_b_200_mk varchar(1) ,
tpr_nm_err_mk varchar(1) ,
last_recev_date varchar(7) ,
scts_trade_incm_tot decimal(14) ,
scts_trade_incm_tax decimal(14) ,
flg_law_separate varchar(1) ,
flg_tps_incm_t decimal(14) ,
flg_spous_incm_t decimal(14) ,
flg_grp_incm_tot decimal(14) ,
yn_join_prize varchar(1) ,
flg_ded_amt_same varchar(1) ,
upd_tms_mk varchar(2) ,
flg_base_live_exp decimal(14,0) ,
flg_base_live_dif decimal(14,0) ,
trp_decl_mk varchar(1) ,
net_flg_mode varchar(8) ,
tpr_ltc_mk varchar(8) ,
ss_ltc_mk varchar(8) ,
tpr_nco_sub_amt decimal(14,0) ,
ss_nco_sub_amt decimal(14,0) ,
depnt_nco_sub_amt decimal(14,0) ,
tot_nco_sub_amt decimal(14,0) ,
rebuy_slf_ded_spr decimal(14,0) ,
mlc_tax_ded_spr decimal(14,0) ,
tpr_slry_rvnu_tot decimal(14,0) ,
tpr_slry_esstl_exp decimal(14,0) ,
n_tpr_slry_esstl_exp decimal(14,0) ,
ss_slry_rvnu_tot decimal(14,0) ,
ss_slry_esstl_exp decimal(14,0) ,
n_ss_slry_esstl_exp decimal(14,0) ,
stage_upd_stus char(1) NOT NULL,
data_update_time timestamp NOT NULL,
data_exch_date date NOT NULL)
TABLESPACE sbd 
DISTRIBUTED BY (tpr_idn,rfn)
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

ALTER TABLE  prestage.sbd_irct200_prestage OWNER TO ap_sbd;
