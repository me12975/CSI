
-- Schema:  prestage; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Prestage資料表;
-- Table: sbd_bcit009_prestage;
-- Compressed: N ;
-- Distributed: Y (ban);
-- Partition: Y (data_exch_date);
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  prestage.sbd_bcit009_prestage;

CREATE TABLE  prestage.sbd_bcit009_prestage (
hsn_cd varchar(1) ,
dst_cd varchar(2) ,
sel_case_yy varchar(3) ,
sel_case_mm varchar(2) ,
case_source varchar(1) ,
case_tp varchar(2) ,
serial_no varchar(5) ,
ban varchar(10) ,
data_e_prd varchar(5) ,
dtn_cr_tax1 decimal(12,0) ,
beh_date varchar(7) ,
inves_bdate varchar(7) ,
dtn_cr_tax2 decimal(12,0) ,
im_prod_nm varchar(60) ,
ban1 varchar(8) ,
pe_amt_tot1 decimal(14,0) ,
ban2 varchar(8) ,
pe_amt_tot2 decimal(14,0) ,
ban3 varchar(8) ,
pe_amt_tot3 decimal(14,0) ,
ban4 varchar(8) ,
pe_amt_tot4 decimal(14,0) ,
ban5 varchar(8) ,
pe_amt_tot5 decimal(14,0) ,
chkp_a0 varchar(1) ,
chkp_a1 varchar(1) ,
chkp_a2 varchar(1) ,
chkp_a3 varchar(1) ,
chkp_b0 varchar(1) ,
chkp_b1 varchar(1) ,
chkp_b2 varchar(1) ,
chkp_b3 varchar(1) ,
chkp_b4 varchar(1) ,
chkp_b5 varchar(1) ,
chkp_c1 varchar(1) ,
chkp_c2 varchar(1) ,
chkp_d0 varchar(1) ,
chkp_d1 varchar(1) ,
chkp_d2 varchar(1) ,
pay_amt_mode_a1 varchar(1) ,
pay_amt_mode_a2 varchar(1) ,
pay_amt_mode_a3 varchar(1) ,
pay_amt_mode_a4 varchar(1) ,
oth_pay_amt_mode varchar(20) ,
pay_amt_mode_b1 varchar(1) ,
pay_amt_mode_b2 varchar(1) ,
pay_amt_mode_b3 varchar(1) ,
flow_expl varchar(160) ,
chk_rslt_mk1 varchar(1) ,
chk_rslt_mk2 varchar(1) ,
sup_pay_tax1 decimal(12,0) ,
untr_prs_amt decimal(14,0) ,
untr_prs_tax decimal(12,0) ,
apl_suple_tax1 decimal(12,0) ,
evd1 decimal(12,0) ,
bhv1 decimal(12,0) ,
chk_rslt_mk3 varchar(1) ,
sup_pay_s_amt decimal(14,0) ,
sup_pay_tax2 decimal(12,0) ,
ztx_s_amt decimal(14,0) ,
sup_pay_tax3 decimal(12,0) ,
evade_s_amt decimal(14,0) ,
evade_tax decimal(12,0) ,
apl_suple_tax2 decimal(12,0) ,
evd2 decimal(12,0) ,
bhv2 decimal(12,0) ,
chk_rslt_mk4 varchar(1) ,
sub_ref decimal(12,0) ,
chk_rslt_mk5 varchar(1) ,
dlv_unit varchar(16) ,
artc1 varchar(80) ,
artc2 varchar(80) ,
artc3 varchar(80) ,
app varchar(80) ,
oth_expl text ,
update_date varchar(7) ,
update_user_cd varchar(8) ,
time_stamp timestamp ,
cstp varchar(2) ,
evd3 decimal(12,0) ,
bhv3 decimal(12,0) ,
upd_stus char(1) ,
stg_upd_time timestamp ,
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

ALTER TABLE  prestage.sbd_bcit009_prestage OWNER TO ap_sbd;
