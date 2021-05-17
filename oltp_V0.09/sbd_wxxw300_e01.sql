
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_wxxw300_e01;
-- Compressed: N ;
-- Distributed: Y (unpaid_case_tp,hsn_cd,dst_cd,tax_cd,subtax_cd,data_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_wxxw300_e01;

CREATE TABLE  oltp.sbd_wxxw300_e01 (
unpaid_case_tp varchar(1) NOT NULL,
hsn_cd varchar(1) NOT NULL,
dst_cd varchar(2) NOT NULL,
town_cd varchar(2) NOT NULL,
tax_cd varchar(2) NOT NULL,
subtax_cd varchar(1) NOT NULL,
bl_yr_pd varchar(4) NOT NULL,
data_no varchar(10) NOT NULL,
manage_ck1_no varchar(1) ,
manage_ck2_no varchar(1) ,
idn_ban varchar(10) ,
pfn varchar(17) ,
coll_b_date varchar(7) ,
coll_e_date varchar(7) ,
extend_b_date varchar(7) ,
extend_e_date varchar(7) ,
exam_upd_mk varchar(1) ,
exam_upd_date varchar(7) ,
exam_upd_unit_cd varchar(5) ,
send_mk varchar(1) ,
send_date varchar(7) ,
instm_mk varchar(1) ,
obrt_mk varchar(1) ,
scts_tp varchar(1) ,
grnt_mk varchar(1) ,
bail_mk varchar(1) ,
hstn_vouch_mk varchar(1) ,
adm_rmd_mk varchar(1) ,
adm_rmd_sur_mk varchar(1) ,
int_adm_rmd_mk varchar(1) ,
int_adm_rmd_sur_mk varchar(1) ,
dlv_exec_mk varchar(1) ,
exec_vouch_mk varchar(1) ,
unable_colld_mk varchar(1) ,
unable_exec_mk varchar(1) ,
join_dist_debt_mk varchar(1) ,
unpaid_l_mk varchar(1) ,
unpaid_upd_date varchar(7) ,
unpaid_ba_tax decimal(12;0) ,
unpaid_misc1_cd varchar(1) ,
unpaid_misc1_amt decimal(11;0) ,
unpaid_misc2_cd varchar(1) ,
unpaid_misc2_amt decimal(11;0) ,
unpaid_misc3_cd varchar(1) ,
unpaid_misc3_amt decimal(11;0) ,
unpaid_misc4_cd varchar(1) ,
unpaid_misc4_amt decimal(11;0) ,
unpaid_misc5_cd varchar(1) ,
unpaid_misc5_amt decimal(11;0) ,
unpaid_misc6_cd varchar(1) ,
unpaid_misc6_amt decimal(11;0) ,
cmpt_date varchar(7) ,
cncl_mk varchar(1) ,
est_div_mk varchar(1) ,
trsf_mk varchar(1) ,
n_serv_area varchar(4) ,
exec_yr varchar(3) ,
exec_date varchar(7) ,
aea_cd varchar(6) ,
exec_case_no varchar(13) ,
exec_team_tp varchar(3) ,
re_dlv_mk varchar(1) ,
dlv_date varchar(7) ,
dlv_case_no varchar(12) ,
rvrtcs_mk varchar(1) ,
rvrtcs_date varchar(7) ,
rvrtcs_docu_no varchar(15) ,
exec_vouch_date varchar(7) ,
exec_vouch_case_no varchar(15) ,
jn_dist_date varchar(7) ,
jn_dist_docu_no varchar(15) ,
prot_stus varchar(8) ,
unpaid_case_stus varchar(8) ,
data_b_date varchar(7) ,
data_e_date varchar(7) ,
ind_prp_partner_mk varchar(1) ,
resp_idn varchar(10) ,
resp_nm varchar(30) ,
tel_no varchar(17) ,
nm_co varchar(52) ,
addr_hsn_nm varchar(3) ,
addr_town_nm varchar(5) ,
addr_vill_nm varchar(5) ,
addr_lin varchar(5) ,
addr_road_no varchar(50) ,
haddr_hsn_nm varchar(3) ,
haddr_town_nm varchar(5) ,
haddr_vill_nm varchar(5) ,
haddr_lin varchar(5) ,
haddr_road_no varchar(50) ,
dtn_cr_tms decimal(2;0) ,
vat_otax_bl_ym varchar(5) ,
levy_pd_limit_date varchar(7) ,
join_pers_mk varchar(3) ,
update_user_cd varchar(8) ,
batch_no varchar(10) ,
exam_upd_coll_bdate varchar(7) ,
pay_tms decimal(4;0) ,
wii_cmpt_date varchar(7) ,
extend_reas_cd varchar(2) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (unpaid_case_tp,hsn_cd,dst_cd,tax_cd,subtax_cd,data_no)
;

ALTER TABLE  oltp.sbd_wxxw300_e01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_wxxw300_e01 ADD CONSTRAINT sbd_wxxw300_e01_PK PRIMARY KEY (unpaid_case_tp,hsn_cd,dst_cd,town_cd,tax_cd,subtax_cd,bl_yr_pd,data_no);
