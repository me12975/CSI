
-- Schema:  prestage; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Prestage資料表;
-- Table: sbd_davu017_prestage;
-- Compressed: N ;
-- Distributed: Y (hsn_cd,dst_cd,aphd_mk,serial_no);
-- Partition: Y (data_exch_date);
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  prestage.sbd_davu017_prestage;

CREATE TABLE  prestage.sbd_davu017_prestage (
hsn_cd varchar(1) ,
dst_cd varchar(2) ,
town_cd varchar(2) ,
flg_yy varchar(3) ,
aphd_mk varchar(1) ,
serial_no varchar(5) ,
update_date_time varchar(15) ,
heired_idn varchar(10) ,
flg_date varchar(7) ,
zst_filing_inher_t decimal(12,0) ,
zst_flg_xmp decimal(8,0) ,
zst_flg_ded_t decimal(12,0) ,
spous_ded decimal(10,0) ,
ddsnt_ded decimal(10,0) ,
parent_ded decimal(10,0) ,
disab_ded decimal(10,0) ,
farm_ded decimal(12,0) ,
taxdue_ded decimal(10,0) ,
unpdebt_ded decimal(10,0) ,
funrl_ded decimal(10,0) ,
pub_fac_ded decimal(12,0) ,
cvll10301_ded decimal(11,0) ,
oth_ded1 decimal(10,0) ,
oth_ded2 decimal(10,0) ,
zst_flg_inher_n decimal(12,0) ,
zst_flg_crd_i decimal(10,0) ,
zst_flg_nppt_crd_i decimal(10,0) ,
zst_excl_inher_t decimal(12,0) ,
zst_evade_inher_t decimal(12,0) ,
lt_apl_yr varchar(3) ,
lt_case_no varchar(14) ,
lt_apl_inher_t decimal(12,0) ,
aptm_apl_pybl_tax decimal(11,0) ,
zst_apl_inher_t decimal(12,0) ,
zst_apl_xmp decimal(8,0) ,
zst_apl_ded_t decimal(12,0) ,
zst_apl_inher_n decimal(12,0) ,
tax_rate decimal(2,0) ,
prg_dif decimal(8,0) ,
zst_apl_crd_i decimal(10,0) ,
zst_apl_nppt_crd_i decimal(10,0) ,
whl_apl_pybl_tax decimal(11,0) ,
zst_apl_shsp_tax decimal(11,0) ,
vio_stus varchar(2) ,
adt_cd varchar(5) ,
upd_tp varchar(1) ,
upd_tms decimal(2,0) ,
evade_tax decimal(10,0) ,
slf_sup_int decimal(10,0) ,
adm_rmd_int decimal(10,0) ,
dly_pay_amt decimal(10,0) ,
dly_pay_int decimal(10,0) ,
apl_mk varchar(1) ,
coll_b_date varchar(7) ,
coll_e_date varchar(7) ,
extend_b_date varchar(7) ,
extend_e_date varchar(7) ,
extend_reas_cd varchar(2) ,
manage_cd varchar(24) ,
keyin_date varchar(7) ,
apl_date varchar(7) ,
issued_date1 varchar(7) ,
issued_date2 varchar(7) ,
pay_off_date varchar(7) ,
levy_pd_limit_date varchar(7) ,
apl_ntce_pr_tms decimal(2,0) ,
cert_pr_tms1 decimal(2,0) ,
cert_pr_tms2 decimal(2,0) ,
pay_docu_pr_tms decimal(2,0) ,
create_user_id_cd varchar(5) ,
apl_user_id_cd varchar(5) ,
pay_off_user_id_cd varchar(5) ,
coll_user_id_cd varchar(5) ,
proc_mk varchar(1) ,
case_tp varchar(1) ,
upd_tax_mk varchar(1) ,
o_case_apl_add_mk varchar(1) ,
adm_rmd_stus varchar(1) ,
adm_rmd_upd_date varchar(7) ,
adm_rmd_unapl_mk varchar(1) ,
asg_mk varchar(1) ,
comb_case_no varchar(14) ,
app_grt_date varchar(7) ,
update_cd varchar(1) ,
update_user_cd varchar(8) ,
evade_apl_ded decimal(10,0) ,
paid_inher_ded decimal(10,0) ,
oth_aphd_mk varchar(1) ,
oth_extend_reas varchar(6) ,
stage_upd_stus char(1) NOT NULL,
data_update_time timestamp NOT NULL,
data_exch_date date NOT NULL)
TABLESPACE sbd 
DISTRIBUTED BY (hsn_cd,dst_cd,aphd_mk,serial_no)
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

ALTER TABLE  prestage.sbd_davu017_prestage OWNER TO ap_sbd;
