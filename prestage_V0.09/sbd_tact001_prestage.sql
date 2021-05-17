
-- Schema:  prestage; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Prestage資料表;
-- Table: sbd_tact001_prestage;
-- Compressed: N ;
-- Distributed: Y (tax_tp,hsn_cd,dst_cd,ba_tax_fine_mk,serial_no);
-- Partition: Y (data_exch_date);
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  prestage.sbd_tact001_prestage;

CREATE TABLE  prestage.sbd_tact001_prestage (
tax_tp varchar(1) ,
hsn_cd varchar(1) ,
dst_cd varchar(2) ,
app_yy varchar(2) ,
ba_tax_fine_mk varchar(1) ,
serial_no varchar(5) ,
org_cd varchar(3) ,
town_cd varchar(2) ,
tax_cd varchar(2) ,
subtax_cd varchar(1) ,
bl_yy varchar(2) ,
bl_mm varchar(2) ,
serv_area varchar(2) ,
data_serial_no varchar(20) ,
manage_ck1_no varchar(1) ,
manage_ck2_no varchar(1) ,
data_tp varchar(1) ,
rvw_tms varchar(1) ,
taxes_case_no varchar(17) ,
chk_tms varchar(2) ,
safe_no varchar(17) ,
idn_ban varchar(10) ,
incm_yr varchar(3) ,
case_nm varchar(52) ,
addr_hsn_nm varchar(9) ,
addr_town_nm varchar(12) ,
addr_vill_nm varchar(12) ,
addr_lin varchar(8) ,
addr_road_no varchar(75) ,
zip_cd varchar(3) ,
tpr_tel varchar(30) ,
case_host_idn varchar(10) ,
case_host_nm varchar(52) ,
happen_date varchar(7) ,
sup_ref_mk varchar(1) ,
del_mk varchar(1) ,
acpt_unit varchar(3) ,
acpt_stus varchar(1) ,
app_date varchar(7) ,
acpt_docu_no varchar(10) ,
apply_nm varchar(52) ,
apply_tel varchar(30) ,
lwsc_recev_date varchar(7) ,
lwsc_rtn_date varchar(7) ,
apl_date varchar(7) ,
busi_mm_num decimal(2,0) ,
flg_levy_tot decimal(12,0) ,
flg_levy_n_amt decimal(12,0) ,
apl_levy_tot decimal(12,0) ,
credit_ded_amt1 decimal(12,0) ,
credit_ded_amt2 decimal(12,0) ,
credit_ded_amt3 decimal(12,0) ,
apl_levy_n_amt decimal(12,0) ,
incnt_credit decimal(12,0) ,
invt_ded_amt decimal(12,0) ,
upgrd_t678_ctx decimal(12,0) ,
fgn_incm_ica decimal(12,0) ,
adm_rmd_dnt_cr decimal(12,0) ,
dtn_cr_tax decimal(12,0) ,
apl_prov decimal(12,0) ,
wh_tax decimal(12,0) ,
flg_slf_pay_tax decimal(12,0) ,
pt_crd decimal(12,0) ,
mlc_tax_ded decimal(12,0) ,
ss_incm_tot decimal(12,0) ,
ss_incm_net decimal(12,0) ,
ss_pybl_tax decimal(12,0) ,
no_ss_pybl_tax decimal(12,0) ,
no_ss_incm_net decimal(12,0) ,
o_pybl_tax decimal(12,0) ,
o_sht_est_amt decimal(12,0) ,
o_dly_uncm_amt decimal(12,0) ,
o_apl_int decimal(12,0) ,
lt_sh_sup_ref decimal(12,0) ,
lt_dly_uncm_amt decimal(12,0) ,
lt_apl_int decimal(12,0) ,
o_sh_sup_ref decimal(12,0) ,
shsr_ba_tax decimal(12,0) ,
shsr_sht_est_amt decimal(12,0) ,
shsr_dly_uncm_amt decimal(12,0) ,
shsr_apl_int decimal(12,0) ,
adm_rmd_int decimal(12,0) ,
dly_pay_amt decimal(12,0) ,
dly_pay_int decimal(12,0) ,
paid_ba_tax decimal(12,0) ,
paid_sht_est_amt decimal(12,0) ,
paid_dly_uncm_amt decimal(12,0) ,
paid_apl_int decimal(12,0) ,
paid_adm_rmd_int decimal(12,0) ,
paid_dly_pay_amt decimal(12,0) ,
paid_dly_pay_int decimal(12,0) ,
grnt_pr_val decimal(12,0) ,
coll_b_date varchar(7) ,
coll_e_date varchar(7) ,
extend_b_date varchar(7) ,
extend_e_date varchar(7) ,
send_date varchar(7) ,
pay_date varchar(7) ,
ref_date varchar(7) ,
same_yr_app_mk varchar(1) ,
same_yr_asg_tax_tp varchar(1) ,
same_yr_asg_tp varchar(1) ,
same_yr_rvwr_cd varchar(5) ,
same_yr_rvw_no varchar(12) ,
yn_assign varchar(1) ,
ba_tax_fine_tp varchar(1) ,
orgn_tp varchar(1) ,
pfs_apl_tp varchar(1) ,
drct_apl_mk varchar(1) ,
invg_case_mk varchar(1) ,
flg_mk varchar(1) ,
apl_system_mk varchar(1) ,
clcn_sys_mk varchar(1) ,
qlfy_mk varchar(1) ,
adt_unit varchar(3) ,
adt_cd varchar(5) ,
adt_nm varchar(40) ,
keyin_id_cd varchar(8) ,
keyin_date varchar(7) ,
update_date varchar(7) ,
update_user_cd varchar(8) ,
time_stamp timestamp ,
tot_sell_prc decimal(17,0) ,
flg_sel_prc_lt decimal(14,0) ,
evade_sel_prc decimal(14,0) ,
tot_pybl_tax decimal(14,0) ,
flg_pybl_tax_lt decimal(14,0) ,
suple_tax decimal(14,0) ,
app_type varchar(3) ,
stage_upd_stus char(1) NOT NULL,
data_update_time timestamp NOT NULL,
data_exch_date date NOT NULL)
TABLESPACE sbd 
DISTRIBUTED BY (tax_tp,hsn_cd,dst_cd,ba_tax_fine_mk,serial_no)
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

ALTER TABLE  prestage.sbd_tact001_prestage OWNER TO ap_sbd;
