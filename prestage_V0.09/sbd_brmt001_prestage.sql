
-- Schema:  prestage; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Prestage資料表;
-- Table: sbd_brmt001_prestage;
-- Compressed: N ;
-- Distributed: Y (ban);
-- Partition: Y (data_exch_date);
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  prestage.sbd_brmt001_prestage;

CREATE TABLE  prestage.sbd_brmt001_prestage (
pfn_hsn_cd varchar(1) ,
pfn_dst_cd varchar(2) ,
pfn_serv_area varchar(2) ,
pfn_create_yy varchar(3) ,
pfn_create_mm varchar(2) ,
pfn_data_source_mk varchar(1) ,
pfn_book_page_no varchar(4) ,
ban varchar(8) ,
vat_losn varchar(9) ,
bl_yr varchar(3) ,
bl_mm varchar(2) ,
subtax_tp varchar(1) ,
vat_flg_mode varchar(1) ,
total_paid_mk varchar(1) ,
use_invo_copy decimal(10,0) ,
flg_date varchar(7) ,
c3ev_txl_s_amt decimal(14,0) ,
c3cv_txl_s_amt decimal(14,0) ,
c2cv_txl_s_amt decimal(14,0) ,
n_nv_txl_s_amt decimal(14,0) ,
rtn_txl_s_amt decimal(14,0) ,
txl_s_amt_tot decimal(14,0) ,
c3ev_txl_tax decimal(12,0) ,
c3cv_txl_tax decimal(12,0) ,
c2cv_txl_tax decimal(12,0) ,
n_nv_txl_tax decimal(12,0) ,
rtn_txl_tax decimal(12,0) ,
txl_tax_tot decimal(12,0) ,
c3ev_ztx_s_amt decimal(14,0) ,
no_cs_z_tax_s_amt decimal(14,0) ,
c2cv_ztx_s_amt decimal(14,0) ,
cs_z_tax_s_amt decimal(14,0) ,
rtn_ztx_s_amt decimal(14,0) ,
ztx_s_amt_tot decimal(14,0) ,
c3ev_xmp_s_amt decimal(14,0) ,
c3v_xmp_s_amt decimal(14,0) ,
c2cv_xmp_s_amt decimal(14,0) ,
n_nv_xmp_s_amt decimal(14,0) ,
rtn_xmp_s_amt decimal(14,0) ,
xmp_s_amt_tot decimal(14,0) ,
sp_ed_p_25_s_amt decimal(14,0) ,
sp_ed_p_15_s_amt decimal(14,0) ,
fip_invo_s_amt decimal(14,0) ,
fip_nisp_s_amt decimal(14,0) ,
reins_rvnu_s_amt decimal(14,0) ,
xmp_rvnu_s_amt decimal(14,0) ,
sp_rtn_s_amt decimal(14,0) ,
sp_s_amt_tot decimal(14,0) ,
sp_ed_p_25_tax decimal(12,0) ,
sp_ed_p_15_tax decimal(12,0) ,
fip_invo_tax decimal(12,0) ,
fip_nisp_tax decimal(12,0) ,
reins_rvnu_tax decimal(12,0) ,
sp_rtn_s_tax decimal(12,0) ,
sp_tax_tot decimal(12,0) ,
sale_amt_total decimal(14,0) ,
sale_lnd_amt decimal(14,0) ,
sale_oth_fa decimal(14,0) ,
invo_pe_amt decimal(14,0) ,
invo_fa_amt decimal(14,0) ,
c3v_pe_amt decimal(14,0) ,
c3v_fa_amt decimal(14,0) ,
oth_pe_amt decimal(14,0) ,
oth_fa_amt decimal(14,0) ,
cs_coll_for_pe_amt decimal(14,0) ,
cs_coll_for_fa_amt decimal(14,0) ,
rtn_pe_amt decimal(14,0) ,
rtn_fa_amt decimal(14,0) ,
pe_amt_tot decimal(14,0) ,
fa_amt_tot decimal(14,0) ,
invo_pe_tax decimal(12,0) ,
invo_fa_tax decimal(12,0) ,
c3v_pe_tax decimal(12,0) ,
c3v_fa_tax decimal(12,0) ,
oth_pe_tax decimal(12,0) ,
oth_fa_tax decimal(12,0) ,
cs_coll_for_pe_tax decimal(12,0) ,
cs_coll_for_fa_tax decimal(12,0) ,
rtn_pe_tax decimal(12,0) ,
rtn_fa_tax decimal(12,0) ,
pe_tax_tot decimal(12,0) ,
fa_tax_tot decimal(12,0) ,
pe_prs_t_amt decimal(14,0) ,
fa_prs_t_amt decimal(14,0) ,
no_credit_rate decimal(3,0) ,
pt_crd_purchs decimal(12,0) ,
im_fa_prs_amt decimal(14,0) ,
im_fa_prs_tax decimal(12,0) ,
im_fa_pybl_tax decimal(12,0) ,
im_oth_prs_amt decimal(14,0) ,
im_oth_prs_tax decimal(12,0) ,
im_oth_pybl_tax decimal(12,0) ,
im_xmp_prs_amt decimal(14,0) ,
im_serv_prs_amt decimal(14,0) ,
im_serv_prs_tax decimal(12,0) ,
im_srv_pybl_tax1 decimal(12,0) ,
zsp_s_item_tax_tot decimal(12,0) ,
pybl_import_tax decimal(12,0) ,
im_srv_pybl_tax2 decimal(12,0) ,
sp_tax_pybl_tax decimal(12,0) ,
sh_sup_tax decimal(12,0) ,
tax_tot1 decimal(12,0) ,
pt_crd_purchs_tot decimal(12,0) ,
lp_acu_dtn_credit decimal(12,0) ,
sh_ref decimal(12,0) ,
tax_tot2 decimal(12,0) ,
act_paid_tax decimal(12,0) ,
flg_dtn_cr_tax decimal(12,0) ,
ref_limit_tot decimal(12,0) ,
zsp_sh_ref decimal(12,0) ,
zsp_acu_dtn_credit decimal(12,0) ,
no_use_inv_amt decimal(14,0) ,
ref_mk varchar(1) ,
ref_amt decimal(14,0) ,
apl_form_no varchar(15) ,
cary_fw_mk varchar(2) ,
submit_mk varchar(1) ,
out_s_keyin_err_mk varchar(1) ,
force_mk varchar(1) ,
update_cd varchar(1) ,
keyin_id_cd varchar(8) ,
keyin_date varchar(13) ,
time_stamp timestamp ,
cpa_auth_mk varchar(1) ,
agent_flg_mk varchar(1) ,
filer_idn varchar(10) ,
filer_nm varchar(30) ,
filer_tel_area_cd varchar(4) ,
filer_tel_no varchar(11) ,
filer_tel_ext_no varchar(5) ,
agent_filer_lic_no varchar(50) ,
bscd varchar(6) ,
fgn_reins_rvnu_amt decimal(14) ,
fgn_fip_invo_amt decimal(14) ,
fgn_oth_amt decimal(14) ,
fgn_reins_rvnu_tax decimal(12) ,
fgn_fip_invo_tax decimal(12) ,
fgn_oth_tax decimal(12) ,
fip_orgl_rvnu_amt decimal(14) ,
fip_orgl_rvnu_tax decimal(12) ,
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

ALTER TABLE  prestage.sbd_brmt001_prestage OWNER TO ap_sbd;
