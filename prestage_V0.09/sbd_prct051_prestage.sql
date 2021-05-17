
-- Schema:  prestage; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Prestage資料表;
-- Table: sbd_prct051_prestage;
-- Compressed: N ;
-- Distributed: Y (ban);
-- Partition: Y (data_exch_date);
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  prestage.sbd_prct051_prestage;

CREATE TABLE  prestage.sbd_prct051_prestage (
data_yr varchar(3) ,
flg_mk varchar(1) ,
ban varchar(8) ,
hsn_cd varchar(1) ,
dst_cd varchar(2) ,
recev_no varchar(8) ,
ft_dist_crd_rate decimal(5,2) ,
ft_dist_date varchar(7) ,
ft_dist_formula_mk varchar(1) ,
ft_dist_ica_blnc decimal(14,0) ,
ft_dist_acc_are decimal(14,0) ,
ft_dist_crd_rate_cmpt1 decimal(5,2) ,
ft_dist_un_acoll_are decimal(14,0) ,
ft_dist_crd_rate_cmpt2 decimal(5,2) ,
sd_dist_crd_rate decimal(5,2) ,
sd_dist_date varchar(7) ,
sd_dist_formula_mk varchar(1) ,
sd_dist_ica_blnc decimal(14,0) ,
sd_dist_acc_are decimal(14,0) ,
sd_dist_crd_rate_cmpt1 decimal(5,2) ,
sd_dist_un_acoll_are decimal(14,0) ,
sd_dist_crd_rate_cmpt2 decimal(5,2) ,
dist_divd_pct decimal(5,2) ,
dist_stkh_divd_pct decimal(5,2) ,
dist_rwrd_pct decimal(5,2) ,
dist_empl_divd_pct decimal(5,2) ,
bef86y_pd_b_udpf decimal(14,0) ,
l2y_pd_b_udpf decimal(14,0) ,
pd_b_udpf_tot decimal(14,0) ,
bef86y_lp_pfls_adj_amt decimal(14,0) ,
aft87y_lp_pfls_adj_amt decimal(14,0) ,
lp_pfls_adj_amt_tot decimal(14,0) ,
ly_tax_aft_n_pf decimal(14,0) ,
pf_cnvt_cptl_surplus decimal(14,0) ,
oth decimal(14,0) ,
bef86y_zsp_pt_dist_pf decimal(14,0) ,
l2y_zsp_pt_dist_pf decimal(14,0) ,
zsy_zsp_pt_dist_pf decimal(14,0) ,
zsp_pt_dist_pf_tot decimal(14,0) ,
ofls decimal(14,0) ,
bef86y_pk_lgsr decimal(14,0) ,
l3y_pk_lgsr_crd_rate decimal(5,2) ,
l3y_pk_lgsr_ica decimal(14,0) ,
pk_l2y_lgsr decimal(14,0) ,
pk_l2y_lgsr_crd_rate decimal(5,2) ,
pk_l2y_lgsr_ica decimal(14,0) ,
pk_zsy_lgsr decimal(14,0) ,
pk_zsy_lgsr_crd_rate decimal(5,2) ,
pk_zsy_lgsr_ica decimal(14,0) ,
pk_lgsr_tot decimal(14,0) ,
pk_lgsr_crd_rate_tot decimal(5,2) ,
pk_lgsr_ica_tot decimal(14,0) ,
bef86y_pk_spc_pfsr decimal(14,0) ,
pk_l2y_spc_pfsr decimal(14,0) ,
pk_l2y_pfsr_crd_rate decimal(5,2) ,
pk_l2y_pfsr_ica decimal(14,0) ,
zsy_legal_acu decimal(14,0) ,
zsy_lgsr_crd_rate decimal(5,2) ,
zsy_pf_acu_ica decimal(14,0) ,
pk_spc_pfsr_tot decimal(14,0) ,
pk_pfsr_crd_rate_tot decimal(5,2) ,
pk_pfsr_ica_tot decimal(14,0) ,
bef86y_dist_divd decimal(14,0) ,
l2y_dist_divd decimal(14,0) ,
l2y_dist_divd_crd_rate decimal(5,2) ,
l2y_dist_divd_ica decimal(14,0) ,
zsy_dist_divd decimal(14,0) ,
zsy_dist_divd_crd_rate decimal(5,2) ,
zsy_dist_divd_ica decimal(14,0) ,
dist_divd_tot decimal(14,0) ,
dist_divd_crd_rate_tot decimal(5,2) ,
dist_divd_ica_tot decimal(14,0) ,
bef86y_divd decimal(14,0) ,
l2y_divd decimal(14,0) ,
l2y_divd_crd_rate decimal(5,2) ,
l2y_divd_ica decimal(14,0) ,
zsy_divd decimal(14,0) ,
zsy_divd_crd_rate decimal(5,2) ,
zsy_divd_ica decimal(14,0) ,
divd_tot decimal(14,0) ,
divd_crd_rate_tot decimal(5,2) ,
divd_ica_tot decimal(14,0) ,
bef86y_dist_rwrd decimal(14,0) ,
l2y_dist_rwrd decimal(14,0) ,
l2y_dist_rwrd_crd_rate decimal(5,2) ,
l2y_dist_rwrd_ica decimal(14,0) ,
zsy_dist_rwrd decimal(14,0) ,
zsy_dist_rwrd_crd_rate decimal(5,2) ,
zsy_dist_rwrd_ica decimal(14,0) ,
dist_rwrd_tot decimal(14,0) ,
dist_rwrd_crd_rate_tot decimal(5,2) ,
dist_rwrd_ica_tot decimal(14,0) ,
pk_surplus_amt decimal(14,0) ,
pk_surplus_crd_rate decimal(5,2) ,
pk_surplus_amt_ica decimal(14,0) ,
pk_wlfr_amt decimal(14,0) ,
pk_wlfr_amt_crd_rate decimal(5,2) ,
pk_wlfr_amt_ica decimal(14,0) ,
bef86y_pd_e_udpf decimal(14,0) ,
l2y_pd_e_udpf decimal(14,0) ,
zsy_pd_e_udpf decimal(14,0) ,
pd_e_udpf_tot decimal(14,0) ,
bef86y_lp_pfls_adj decimal(14,0) ,
aft87y_lp_pfls_adj decimal(14,0) ,
hppn_lp_pfls_adj_tot decimal(14,0) ,
bef86y_acu_pfls_blnc decimal(14,0) ,
aft87y_acu_pfls_blnc decimal(14,0) ,
acu_pfls_blnc_tot decimal(14,0) ,
update_cd varchar(1) ,
force_mk varchar(1) ,
keyin_date varchar(7) ,
keyin_id_cd varchar(8) ,
time_stamp timestamp ,
bef86y_pfls_udpf decimal(14,0) ,
l2y_pfls_udpf decimal(14,0) ,
pfls_udpf_tot decimal(14,0) ,
blnc_udpf_tot decimal(14,0) ,
ft_dist_un_acoll_are1 decimal(14,0) ,
sd_dist_un_acoll_are1 decimal(14,0) ,
stage_upd_stus char(1) NOT NULL,
data_update_time timestamp NOT NULL,
data_exch_date date NOT NULL)
TABLESPACE sbd 
DISTRIBUTED BY (ban)
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

ALTER TABLE  prestage.sbd_prct051_prestage OWNER TO ap_sbd;
