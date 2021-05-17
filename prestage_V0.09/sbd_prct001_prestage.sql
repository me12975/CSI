
-- Schema:  prestage; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Prestage資料表;
-- Table: sbd_prct001_prestage;
-- Compressed: N ;
-- Distributed: Y (ban);
-- Partition: Y (data_exch_date);
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  prestage.sbd_prct001_prestage;

CREATE TABLE  prestage.sbd_prct001_prestage (
data_yr varchar(3) ,
ban varchar(8) ,
hsn_cd varchar(1) ,
dst_cd varchar(2) ,
recev_no varchar(8) ,
tax_rtn_tp varchar(1) ,
resp_idn varchar(10) ,
orgn_tp varchar(1) ,
gove_priv_tp varchar(1) ,
headq_br_cd varchar(1) ,
vat_losn varchar(9) ,
bscd varchar(6) ,
incm_b_date varchar(7) ,
incm_e_date varchar(7) ,
agent_lic_no varchar(8) ,
recev_date varchar(7) ,
prov_recev_no varchar(8) ,
tel_area_no varchar(20) ,
busi_mm_num decimal(2,0) ,
busi_rvnu decimal(14,0) ,
sale_rtn_amt decimal(14,0) ,
sale_alwnc_amt decimal(14,0) ,
busi_rvnu_net decimal(14,0) ,
busi_cost decimal(14,0) ,
busi_pf decimal(14,0) ,
busi_exp decimal(14,0) ,
slry_exp decimal(14,0) ,
rent_exp decimal(14,0) ,
stnry_fee decimal(14,0) ,
trvl_fee decimal(14,0) ,
frgt decimal(14,0) ,
post_tel_fee decimal(14,0) ,
rpa_exp decimal(14,0) ,
advrts_fee decimal(14,0) ,
water_ele_fee decimal(14,0) ,
ins decimal(14,0) ,
social_fee decimal(14,0) ,
donate_fee decimal(14,0) ,
tax_amt decimal(14,0) ,
bad_debt_loss decimal(14,0) ,
depr_amt decimal(14,0) ,
depl_apn decimal(14,0) ,
export_loss decimal(14,0) ,
meals_fee decimal(14,0) ,
empl_ben decimal(14,0) ,
resh_fee decimal(14,0) ,
comsn_exp decimal(14,0) ,
trng_fee decimal(14,0) ,
oth_exp decimal(14,0) ,
busi_net_pf decimal(14,0) ,
non_busi_rvnu decimal(14,0) ,
gene_divd decimal(14,0) ,
n_busi_incm_divd decimal(14,0) ,
excl_incm_stk decimal(14,0) ,
int_rvnu decimal(14,0) ,
lse_rvnu decimal(14,0) ,
sale_ast_pf decimal(14,0) ,
comsn_rvnu decimal(14,0) ,
invn_pf decimal(14,0) ,
exch_pf decimal(14,0) ,
oth_rvnu decimal(14,0) ,
ref_rvnu decimal(14,0) ,
n_busi_exp decimal(14,0) ,
int_exp decimal(14,0) ,
invt_loss decimal(14,0) ,
sale_ast_loss decimal(14,0) ,
disa_loss decimal(14,0) ,
invn_loss decimal(14,0) ,
exch_loss decimal(14,0) ,
oth_loss decimal(14,0) ,
acc_y_incm decimal(14,0) ,
adj_y_incm decimal(14,0) ,
net_pf_rate decimal(7,2) ,
loss_unded_amt decimal(14,0) ,
mod_xmp_int decimal(14,0) ,
incnt_xmp_incm decimal(14,0) ,
bal58_amt decimal(14,0) ,
levy_incm decimal(14,0) ,
pybl_tax decimal(14,0) ,
upgrd_law_rgl_ctx decimal(14,0) ,
fgn_incm_ica decimal(14,0) ,
adm_rmd_dnt_cr decimal(14,0) ,
shtinvt_rise_pf decimal(14,0) ,
mof_appr_are_sub_amt decimal(14,0) ,
rbt_are_slf_pay_tax decimal(14,0) ,
rbt_are_sh_ref decimal(14,0) ,
flg_prov_tax decimal(14,0) ,
un_rtx decimal(14,0) ,
slf_pay_tax decimal(14,0) ,
sh_ref decimal(14,0) ,
un_appr_vouch decimal(14,0) ,
mod_headq_br_s_amt decimal(14,0) ,
mod_busi_incm_mod decimal(14,0) ,
mod_cary_fw_arcv decimal(14,0) ,
mod_srcv_un_invo decimal(14,0) ,
mod_rvnu_add_oth decimal(14,0) ,
mod_zsp_arcv decimal(14,0) ,
mod_lp_srcv_invo decimal(14,0) ,
mod_sale_invo_amt decimal(14,0) ,
mod_ov_invo_amt decimal(14,0) ,
mod_comsn_rvnu decimal(14,0) ,
mod_rent_rvnu decimal(14,0) ,
mod_sale_smtrl decimal(14,0) ,
mod_sale_ast_amt decimal(14,0) ,
mod_agent_recev decimal(14,0) ,
mod_rvnu_sub_oth decimal(14,0) ,
mod_empl_pers decimal(8,0) ,
mod_prov_tax decimal(14,0) ,
mod_prov_credit_tax decimal(14,0) ,
mod_prov_rbt_tax decimal(14,0) ,
mod_prov_pay_tax decimal(14,0) ,
mod_excl_incm_int decimal(14,0) ,
mod_scts_trn_incm decimal(14,0) ,
mod_sale_lnd_pf decimal(14,0) ,
use_cash_reg_mk varchar(1) ,
use_cpu_mk varchar(1) ,
force_mk varchar(1) ,
update_cd varchar(1) ,
keyin_id_cd varchar(8) ,
keyin_date varchar(7) ,
time_stamp timestamp ,
divd_or_pf_n_amt decimal(14,0) ,
mod_sale_lnd_pf1 decimal(14,0) ,
cnvt_safe_mk varchar(1) ,
trst_estab_invo_amt decimal(14,0) ,
abate_incm decimal(14,0) ,
excl_incm_amt decimal(14,0) ,
ded_loss_amt decimal(14,0) ,
oth_add_cal_item decimal(14,0) ,
scts_lnd_trade_loss decimal(14,0) ,
dlfg_amt_grp_fine decimal(14,0) ,
adj_acc_incm_dif decimal(14,0) ,
adj_acc_incm_mk varchar(3) ,
legal_cert_loss decimal(14,0) ,
un_conf_loss_amt decimal(14,0) ,
oth_appr_item_amt decimal(14,0) ,
incm_tax_exp decimal(14,0) ,
adm_rmd_dtn_cr_prov decimal(14,0) ,
cntry_xmp_incm decimal(14,0) ,
credit_ded_dif decimal(14,0) ,
lmt_reas_vanish_pf decimal(14,0) ,
mof_appr_item decimal(14,0) ,
sel_incnt_xmp_incm decimal(14,0) ,
sel_loss_unded_amt decimal(14,0) ,
mlc_credit_rtx decimal(14,0) ,
mlc_incm decimal(14,0) ,
busi_net_rate decimal(14,2) ,
mod_rvnu_add_expl varchar(230) ,
mod_rvnu_sub_expl varchar(230) ,
std_cd_1 varchar(6) ,
bscd_sml_1 varchar(10) ,
ext_net_pf_rate_1 decimal(7,2) ,
incm_net_pf_rate_1 decimal(7,2) ,
busi_rvnu_net_1 decimal(14,0) ,
std_cd_2 varchar(6) ,
bscd_sml_2 varchar(10) ,
ext_net_pf_rate_2 decimal(7,2) ,
incm_net_pf_rate_2 decimal(7,2) ,
busi_rvnu_net_2 decimal(14,0) ,
appr_yy varchar(3) ,
appr_mm varchar(2) ,
sale_rtn_alwnc decimal(14,0) ,
std_cd_3 varchar(6) ,
bscd_sml_3 varchar(10) ,
ext_net_pf_rate_3 decimal(7,2) ,
incm_net_pf_rate_3 decimal(7,2) ,
busi_rvnu_net_3 decimal(14,0) ,
ext_chg_invn_vltn varchar(1) ,
closing_mfg_cd varchar(1) ,
invn_vltn_method varchar(16) ,
tax_rtn_app_mk varchar(1) ,
open_date varchar(7) ,
busi_kd varchar(1) ,
acc_stl_busi_rvnu decimal(14,0) ,
exch_rvnu decimal(14,0) ,
acc_sale_rtn_amt decimal(14,0) ,
acc_sale_alwnc_amt decimal(14,0) ,
acc_busi_rvnu_net decimal(14,0) ,
acc_stl_busi_cost decimal(14,0) ,
acc_stl_busi_pf decimal(14,0) ,
acc_stl_pf_rate decimal(7,2) ,
acc_stl_busi_exp decimal(14,0) ,
acc_stl_exp_rate decimal(7,2) ,
acc_stl_slry_exp decimal(14,0) ,
acc_stl_rent_exp decimal(14,0) ,
acc_stl_stnry_fee decimal(14,0) ,
acc_stl_trvl_fee decimal(14,0) ,
acc_stl_frgt decimal(14,0) ,
acc_post_tel_fee decimal(14,0) ,
acc_stl_rpa_exp decimal(14,0) ,
acc_stl_advrts_fee decimal(14,0) ,
acc_water_ele_fee decimal(14,0) ,
acc_stl_ins decimal(14,0) ,
acc_stl_social_fee decimal(14,0) ,
acc_stl_donate_fee decimal(14,0) ,
acc_stl_tax_amt decimal(14,0) ,
acc_bad_debt_loss decimal(14,0) ,
acc_stl_depr_amt decimal(14,0) ,
acc_stl_depl_apn decimal(14,0) ,
acc_export_loss decimal(14,0) ,
acc_stl_meals_fee decimal(14,0) ,
acc_stl_empl_ben decimal(14,0) ,
acc_stl_resh_fee decimal(14,0) ,
acc_stl_comsn_exp decimal(14,0) ,
acc_stl_trng_fee decimal(14,0) ,
acc_stl_oth_exp decimal(14,0) ,
acc_busi_net_pf decimal(14,0) ,
acc_busi_net_rate decimal(7,2) ,
acc_non_busi_rvnu decimal(14,0) ,
acc_stl_gene_divd decimal(14,0) ,
acc_n_busi_incm decimal(14,0) ,
acc_excl_incm_stk decimal(14,0) ,
acc_stl_int_rvnu decimal(14,0) ,
acc_stl_lse_rvnu decimal(14,0) ,
acc_sale_ast_pf decimal(14,0) ,
acc_stl_comsn_rvnu decimal(14,0) ,
acc_stl_invn_pf decimal(14,0) ,
acc_stl_exch_pf decimal(14,0) ,
acc_stl_oth_rvnu decimal(14,0) ,
acc_stl_n_busi_exp decimal(14,0) ,
acc_stl_int_exp decimal(14,0) ,
acc_stl_invt_loss decimal(14,0) ,
acc_sale_ast_loss decimal(14,0) ,
acc_stl_disa_loss decimal(14,0) ,
acc_stl_invn_loss decimal(14,0) ,
acc_stl_exch_loss decimal(14,0) ,
acc_stl_oth_loss decimal(14,0) ,
acc_stl_acc_y_incm decimal(14,0) ,
acc_net_pf_rate decimal(7,2) ,
acc_cntry_xmp_incm decimal(14,0) ,
acc_mod_scts_trn decimal(14,0) ,
acc_mod_sale_lnd decimal(14,0) ,
acc_incnt_xmp_incm decimal(14,0) ,
acc_stl_bal58_amt decimal(14,0) ,
acc_loss_unded_amt decimal(14,0) ,
acc_stl_levy_incm decimal(14,0) ,
pf_rate decimal(7,2) ,
exp_rate decimal(7,2) ,
sale_rtn_diff_expl varchar(230) ,
tax_rate decimal(7,2) ,
prg_dif decimal(14,0) ,
un_fl1y_levy_incm decimal(14,0) ,
un_fl1y_pybl_tax decimal(14,0) ,
payd_ovrse_crd_sub decimal(14,0) ,
adj_busi_rvnu decimal(14,0) ,
adj_sale_rtn_amt decimal(14,0) ,
adj_sale_alwnc_amt decimal(14,0) ,
adj_busi_rvnu_net decimal(14,0) ,
adj_busi_cost decimal(14,0) ,
adj_busi_pf decimal(14,0) ,
adj_pf_rate decimal(7,2) ,
adj_busi_exp decimal(14,0) ,
adj_exp_rate decimal(7,2) ,
adj_slry_exp decimal(14,0) ,
adj_rent_exp decimal(14,0) ,
adj_stnry_fee decimal(14,0) ,
adj_trvl_fee decimal(14,0) ,
adj_frgt decimal(14,0) ,
adj_post_tel_fee decimal(14,0) ,
adj_rpa_exp decimal(14,0) ,
adj_advrts_fee decimal(14,0) ,
adj_water_ele_fee decimal(14,0) ,
adj_ins decimal(14,0) ,
adj_social_fee decimal(14,0) ,
adj_donate_fee decimal(14,0) ,
adj_tax_amt decimal(14,0) ,
adj_bad_debt_loss decimal(14,0) ,
adj_depr_amt decimal(14,0) ,
adj_depl_apn decimal(14,0) ,
adj_export_loss decimal(14,0) ,
adj_meals_fee decimal(14,0) ,
adj_empl_ben decimal(14,0) ,
adj_resh_fee decimal(14,0) ,
adj_comsn_exp decimal(14,0) ,
adj_trng_fee decimal(14,0) ,
adj_oth_exp decimal(14,0) ,
adj_busi_net_pf decimal(14,0) ,
adj_busi_net_rate decimal(7,2) ,
adj_non_busi_rvnu decimal(14,0) ,
adj_gene_divd decimal(14,0) ,
adj_excl_incm_stk decimal(14,0) ,
adj_int_rvnu decimal(14,0) ,
adj_lse_rvnu decimal(14,0) ,
adj_sale_ast_pf decimal(14,0) ,
adj_comsn_rvnu decimal(14,0) ,
adj_invn_pf decimal(14,0) ,
adj_exch_pf decimal(14,0) ,
adj_oth_rvnu decimal(14,0) ,
adj_n_busi_exp decimal(14,0) ,
adj_int_exp decimal(14,0) ,
adj_invt_loss decimal(14,0) ,
adj_sale_ast_loss decimal(14,0) ,
adj_disa_loss decimal(14,0) ,
adj_invn_loss decimal(14,0) ,
adj_exch_loss decimal(14,0) ,
adj_oth_loss decimal(14,0) ,
adj_net_pf_rate decimal(7,2) ,
adj_cntry_xmp_incm decimal(14,0) ,
adj_mod_scts_trn_incm decimal(14,0) ,
adj_mod_sale_lnd_pf decimal(14,0) ,
adj_incnt_xmp_incm decimal(14,0) ,
adj_bal58_amt decimal(14,0) ,
adj_loss_unded_amt decimal(14,0) ,
adj_levy_incm decimal(14,0) ,
invn_vltn_base varchar(1) ,
tmp_recev_date varchar(7) ,
tax_rvnu decimal(14,0) ,
cmpt_rvnu decimal(14,0) ,
adj_tax_rvnu decimal(14,0) ,
adj_cmpt_rvnu decimal(14,0) ,
acc_tax_rvnu decimal(14,0) ,
acc_cmpt_rvnu decimal(14,0) ,
no_invoice_cost decimal(14) ,
no_invoice_lost decimal(14) ,
duty_free_incm decimal(14) ,
bal58_amt_desc varchar(60) ,
slry_plus decimal(14) ,
use_invo_ym varchar(5) ,
trg_trd decimal(14,0) ,
ipr_auth_rd_exp decimal(14,0) ,
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

ALTER TABLE  prestage.sbd_prct001_prestage OWNER TO ap_sbd;
