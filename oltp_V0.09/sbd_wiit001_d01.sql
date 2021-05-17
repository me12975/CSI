
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_wiit001_d01;
-- Compressed: N ;
-- Distributed: Y (clcn_rec_key);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_wiit001_d01;

CREATE TABLE  oltp.sbd_wiit001_d01 (
clcn_rec_key decimal(10;0) NOT NULL,
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
coll_b_date varchar(7) NOT NULL,
coll_e_date varchar(7) NOT NULL,
extend_reas_cd varchar(2) ,
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
unable_exec_mk varchar(1) ,
unable_colld_mk varchar(1) ,
join_dist_debt_mk varchar(1) ,
unpaid_l_mk varchar(1) ,
unpaid_upd_date varchar(7) ,
ba_tax decimal(12;0) ,
misc1_cd varchar(1) ,
misc1_amt decimal(11;0) ,
misc2_cd varchar(1) ,
misc2_amt decimal(11;0) ,
misc3_cd varchar(1) ,
misc3_amt decimal(11;0) ,
misc4_cd varchar(1) ,
misc4_amt decimal(11;0) ,
misc5_cd varchar(1) ,
misc5_amt decimal(11;0) ,
misc6_cd varchar(1) ,
misc6_amt decimal(11;0) ,
cmpt_date varchar(7) ,
est_div_mk varchar(1) ,
trsf_mk varchar(1) ,
cncl_mk varchar(1) ,
cncl_date varchar(7) ,
update_user_cd varchar(8) ,
update_cd varchar(2) ,
pay_tms decimal(4;0) ,
ref_tms decimal(2;0) ,
dtn_cr_tms decimal(2;0) ,
paid_ba_tax decimal(12;0) ,
paid_misc1_cd varchar(1) ,
paid_misc1_amt decimal(11;0) ,
paid_misc2_cd varchar(1) ,
paid_misc2_amt decimal(11;0) ,
paid_misc3_cd varchar(1) ,
paid_misc3_amt decimal(11;0) ,
paid_misc4_cd varchar(1) ,
paid_misc4_amt decimal(11;0) ,
paid_misc5_cd varchar(1) ,
paid_misc5_amt decimal(11;0) ,
paid_misc6_cd varchar(1) ,
paid_misc6_amt decimal(11;0) ,
gove_priv_tp varchar(1) ,
n_serv_area varchar(4) ,
yn_cmpt varchar(1) NOT NULL,
vat_otax_bl_ym varchar(5) ,
levy_pd_limit_date varchar(7) ,
prog_cd varchar(20) ,
time_stamp timestamp NOT NULL,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (clcn_rec_key)
;

ALTER TABLE  oltp.sbd_wiit001_d01 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_wiit001_d01 ADD CONSTRAINT sbd_wiit001_d01_PK PRIMARY KEY (clcn_rec_key);
