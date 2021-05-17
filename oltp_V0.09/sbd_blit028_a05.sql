
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_blit028_a05;
-- Compressed: N ;
-- Distributed: Y (format_cd,p_s_item_pfn,flg_mk,seq_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_blit028_a05;

CREATE TABLE  oltp.sbd_blit028_a05 (
format_cd varchar(2) NOT NULL,
data_ym varchar(5) NOT NULL,
p_s_item_pfn varchar(17) NOT NULL,
flg_mk varchar(1) NOT NULL,
seq_no varchar(9) NOT NULL,
data_bl_ym varchar(5) ,
buyer_ban varchar(8) ,
seller_ban varchar(8) ,
invo_track_no varchar(14) ,
sale_amt decimal(14,0) ,
busi_tax decimal(14,0) ,
levy_tp varchar(1) ,
credit_ded_cd varchar(1) ,
keyin_id_cd varchar(8) ,
filer_tp varchar(1) ,
invo_ym varchar(5) ,
invo_track varchar(2) ,
invo_b_no varchar(8) ,
invo_e_no varchar(8) ,
invo_tp varchar(1) ,
ban varchar(8) ,
pfn_serial_no varchar(4) ,
buy_date varchar(7) ,
update_date varchar(7) ,
update_user_cd varchar(8) ,
blm_invo_e_no varchar(14) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (format_cd,p_s_item_pfn,flg_mk,seq_no)
;

ALTER TABLE  oltp.sbd_blit028_a05 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_blit028_a05 ADD CONSTRAINT sbd_blit028_a05_PK PRIMARY KEY (format_cd,data_ym,p_s_item_pfn,flg_mk,seq_no);
