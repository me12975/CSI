
-- Schema:  prestage; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Prestage資料表;
-- Table: sbd_pact031_prestage;
-- Compressed: N ;
-- Distributed: Y (ban,recev_no);
-- Partition: Y (data_exch_date);
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  prestage.sbd_pact031_prestage;

CREATE TABLE  prestage.sbd_pact031_prestage (
data_yr varchar(3) ,
ban varchar(8) ,
recev_no varchar(8) ,
chk_tms varchar(2) ,
hsn_cd varchar(1) ,
dst_cd varchar(2) ,
town_cd varchar(2) ,
tax_cd varchar(2) ,
subtax_cd varchar(1) ,
bl_yr_pd varchar(4) ,
data_no varchar(10) ,
manage_ck1_no varchar(1) ,
manage_ck2_no varchar(1) ,
sctn_cd varchar(2) ,
team_tp varchar(2) ,
apl_date varchar(7) ,
data_b_date varchar(7) ,
data_e_date varchar(7) ,
open_date varchar(7) ,
vat_losn varchar(9) ,
bscd varchar(6) ,
gove_priv_tp varchar(1) ,
orgn_tp varchar(1) ,
resp_idn varchar(10) ,
tel_area_no varchar(20) ,
ica_pd_b_blnc decimal(14,0) ,
ica_a_item_tot decimal(14,0) ,
pybl_tax decimal(14,0) ,
mod_prov_credit_tax decimal(14,0) ,
adm_rmd_dnt_cr decimal(14,0) ,
fgn_incm_ica decimal(14,0) ,
act_paid_tax decimal(14,0) ,
apl_prov decimal(14,0) ,
un_rtx decimal(14,0) ,
prov_wh_tot decimal(14,0) ,
apl_act_rebate decimal(14,0) ,
apl_slf_pay_tax decimal(14,0) ,
sup_pay_tax decimal(14,0) ,
suple_tax decimal(14,0) ,
apl_sub_ref_tax decimal(14,0) ,
udpf_slfp_tax decimal(14,0) ,
udpf_suple_tax decimal(14,0) ,
alo_divd_tot_pt_crd decimal(14,0) ,
scts_int_wh_tax decimal(14,0) ,
pf_allot_cptl_pt_crd decimal(14,0) ,
hrecp_mrg_pt_crd decimal(14,0) ,
sup_prov_nya_pay_tax decimal(14,0) ,
oth_apad_pt_crd decimal(14,0) ,
ica_sub_item_sum decimal(14,0) ,
dist_divd_pt_crd decimal(14,0) ,
apl_sub_tax decimal(14,0) ,
udpf_apl_sub_tax decimal(14,0) ,
pk_pf_surplus_pt_crd decimal(14,0) ,
empl_divd_pt_crd decimal(14,0) ,
oth_apsb_pt_crd decimal(14,0) ,
apl_ov_dist_pt_crd decimal(14,0) ,
ica_pd_e_blnc decimal(14,0) ,
ly_legal_acu decimal(14,0) ,
zsy_legal_acu decimal(14,0) ,
ly_legal_acu_cptl decimal(14,0) ,
zsy_legal_acu_cptl decimal(14,0) ,
lycut_lgsr_ofls_amt decimal(14,0) ,
zsy_lgsr_ofls_amt decimal(14,0) ,
ly_legal_acu_blnc decimal(14,0) ,
zsy_legal_acu_blnc decimal(14,0) ,
ly_pf_acu_ica decimal(14,0) ,
zsy_pf_acu_ica decimal(14,0) ,
ly_pf_cptl_ica decimal(14,0) ,
zsy_pf_cptl_ica decimal(14,0) ,
ly_acu_ica_blnc decimal(14,0) ,
zsy_acu_ica_blnc decimal(14,0) ,
act_dist_divd_ica decimal(14,0) ,
sh_dist_divd_ica decimal(14,0) ,
stkh_pay_tax decimal(14,0) ,
aptm_sup_coll_tax decimal(14,0) ,
ov_dist_sup_coll_tax decimal(14,0) ,
adt_id_cd varchar(5) ,
main_file_chk_tms varchar(2) ,
apl_tp varchar(1) ,
yn_on_t_flg varchar(1) ,
vio_mk varchar(1) ,
ica_vio_stus varchar(1) ,
ica_reply_mk varchar(1) ,
adm_rmd_int decimal(14,0) ,
coll_mk varchar(1) ,
dl_pay_b_dd varchar(7) ,
dl_pay_e_dd varchar(7) ,
case_tp varchar(2) ,
extend_b_date varchar(7) ,
extend_e_date varchar(7) ,
extend_reas_cd varchar(2) ,
law_rfrc_expl_copy decimal(4,0) ,
book_no varchar(2) ,
page_no varchar(2) ,
adm_rmd_stus varchar(1) ,
out_upd_tms decimal(2,0) ,
pfs_out_upd_cd varchar(1) ,
keyin_date varchar(7) ,
keyin_id_cd varchar(8) ,
time_stamp timestamp ,
ref_int_b_dd varchar(7) ,
cmpt_int_mk varchar(1) ,
stl_flg_ref_rbt_amt decimal(14,0) ,
ov_dist_slf_pay_tax decimal(14,0) ,
credit_ded_dif decimal(14,0) ,
mlc_credit_rtx decimal(14,0) ,
ly_spc_acu decimal(14,0) ,
zsy_spc_acu decimal(14,0) ,
ly_spc_acu_cptl decimal(14,0) ,
zsy_spc_acu_cptl decimal(14,0) ,
ly_spc_ofls_amt decimal(14,0) ,
zsy_spc_ofls_amt decimal(14,0) ,
ly_pf_cptl_ica1 decimal(14,0) ,
zsy_pf_cptl_ica1 decimal(14,0) ,
ly_pf_acu_ica1 decimal(14,0) ,
zsy_pf_acu_ica1 decimal(14,0) ,
pd_e_blnc decimal(14,0) ,
are_tax_act_pay decimal(14,0) ,
are_tax_dist_pf decimal(14,0) ,
stkh_are_add decimal(14,0) ,
are_tax_dist_pf_1 decimal(14,0) ,
aft99y_legal_acu decimal(14,0) ,
zsy99_legal_acu decimal(14,0) ,
aft99y_legal_acu_cptl decimal(14,0) ,
zsy99_legal_acu_cptl decimal(14,0) ,
aft99ycut_lgsr_ofls_amt decimal(14,0) ,
zsy99_lgsr_ofls_amt decimal(14,0) ,
aft99y_pf_cptl_ica decimal(14,0) ,
zsy99_pf_cptl_ica decimal(14,0) ,
aft99y_pf_acu_ica decimal(14,0) ,
zsy99_pf_acu_ica decimal(14,0) ,
aft99y_spc_acu decimal(14,0) ,
zsy99_spc_acu decimal(14,0) ,
aft99y_spc_acu_cptl decimal(14,0) ,
zsy99_spc_acu_cptl decimal(14,0) ,
aft99y_spc_ofls_amt decimal(14,0) ,
zsy99_spc_ofls_amt decimal(14,0) ,
aft99y_pf_cptl_ica1 decimal(14,0) ,
zsy99_pf_cptl_ica1 decimal(14,0) ,
aft99y_pf_acu_ica1 decimal(14,0) ,
zsy99_pf_acu_ica1 decimal(14,0) ,
recev_date varchar(7) ,
stage_upd_stus char(1) NOT NULL,
data_update_time timestamp NOT NULL,
data_exch_date date NOT NULL)
TABLESPACE sbd 
DISTRIBUTED BY (ban,recev_no)
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

ALTER TABLE  prestage.sbd_pact031_prestage OWNER TO ap_sbd;
