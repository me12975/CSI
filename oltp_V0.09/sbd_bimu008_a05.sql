
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_bimu008_a05;
-- Compressed: N ;
-- Distributed: Y (ban,update_date_time);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_bimu008_a05;

CREATE TABLE  oltp.sbd_bimu008_a05 (
ban varchar(8) NOT NULL,
update_date_time varchar(15) NOT NULL,
hsn_cd varchar(1) ,
sale_unit_cd varchar(4) ,
apl_isu_tms varchar(3) ,
start_date varchar(7) ,
stop_buy_mk varchar(1) ,
stop_buy_reas varchar(1) ,
ctrl_mk varchar(1) ,
ctrl_reas varchar(1) ,
ctrl_date varchar(7) ,
rvrs_date varchar(7) ,
docu_chk_date varchar(7) ,
docu_chk_docu_no varchar(10) ,
c3cv_bk_cnt decimal(4,0) ,
c2cv_bk_cnt decimal(4,0) ,
sp_tax_bk_cnt decimal(4,0) ,
c3v_bk_cnt decimal(4,0) ,
c2v_bk_cnt decimal(4,0) ,
agt_cd varchar(10) ,
create_date varchar(7) ,
update_cd varchar(1) ,
update_user_cd varchar(8) ,
agt_hsn_cd varchar(1) ,
agt_seq_no varchar(1) ,
f_trf_mk varchar(1) ,
mk_reas varchar(60) ,
reply_ctrl_mk varchar(1) ,
reply_ctrl_date varchar(7) ,
net_trf_bk_cnt decimal(4,0) ,
id_code varchar(36) ,
ntf_pr_date varchar(7) ,
net_c3cv_bk_cnt decimal(10,0) ,
net_c2cv_bk_cnt decimal(10,0) ,
net_sp_tax_bk_cnt decimal(10,0) ,
net_c3v_bk_cnt decimal(10,0) ,
net_c2v_bk_cnt decimal(10,0) ,
e_invo_yr_alo_mk varchar(1) ,
e_invo_alo_reas varchar(60) ,
head_mk varchar(1) ,
net_cpu_invo_cnt decimal(10,0) ,
head_rep_app varchar(1) ,
e_invo_bk_cnt decimal(10,0) ,
e_invo_sp_bk_cnt decimal(10,0) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (ban,update_date_time)
;

ALTER TABLE  oltp.sbd_bimu008_a05 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_bimu008_a05 ADD CONSTRAINT sbd_bimu008_a05_PK PRIMARY KEY (ban,update_date_time);
