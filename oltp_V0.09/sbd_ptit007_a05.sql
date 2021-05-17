
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_ptit007_a05;
-- Compressed: N ;
-- Distributed: Y (payment_unit_ban,seq_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_ptit007_a05;

CREATE TABLE  oltp.sbd_ptit007_a05 (
payment_unit_ban varchar(8) NOT NULL,
seq_no varchar(4) NOT NULL,
trade_cntnt varchar(500) ,
suit_artc varchar(1) ,
oth_suit_artc varchar(100) ,
tax_agrmt_cntry_tp varchar(2) ,
oth_agrmt_cntry_tp varchar(100) ,
org_appr_date varchar(7) ,
org_appr_docu_no varchar(40) ,
contrct_amt decimal(14;0) ,
org_appr_b_date varchar(7) ,
org_appr_e_date varchar(7) ,
fgn_busi_nm varchar(200) ,
cntry_code varchar(2) ,
fgn_busi_addr varchar(200) ,
supply_busi_tp varchar(1) ,
oth_supply_busi_tp varchar(100) ,
agt_idn_ban varchar(10) ,
agt_nm varchar(52) ,
ban_addr_hsn_nm varchar(6) ,
ban_addr_town_nm varchar(8) ,
ban_addr_vill_nm varchar(8) ,
ban_addr_lin varchar(8) ,
ban_addr_road_no varchar(50) ,
relation_tp varchar(1) ,
keyin_id_cd varchar(8) ,
keyin_date varchar(7) ,
update_user_cd varchar(8) ,
update_date varchar(7) ,
time_stamp timestamp ,
currency_tp varchar(2) ,
oth_currency_nm varchar(20) ,
tin varchar(10) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (payment_unit_ban,seq_no)
;

ALTER TABLE  oltp.sbd_ptit007_a05 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_ptit007_a05 ADD CONSTRAINT sbd_ptit007_a05_PK PRIMARY KEY (payment_unit_ban,seq_no);
