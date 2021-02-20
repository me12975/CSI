
-- Schema: sdg; 
-- Version: V0.1_20201229;
-- Author/Date: ct/20201229;
-- Purpose: sdg;
-- Table: SDG_DATA_ERR_TBL;
-- Compressed: N ;
-- Distributed: Y (TAB_NM,DATA_CHK_TP);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(inv_year_month) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (TPR_IDN)
---- Naming Convention: P -> pk, U -> uk


drop table if exists sdg.SDG_DATA_ERR_TBL;

create table sdg.SDG_DATA_ERR_TBL (
TAB_NM VARCHAR(100) not null,
GROUP_CD VARCHAR(5) not null,
BD_EXCH_DATE DATE not null,
BD_EXCH_TIME VARCHAR(10) not null,
DATA_CHK_TP VARCHAR(20) not null,
DATA_CHK_COL VARCHAR(50) not null,
DATA_VAL VARCHAR(100) not null,
SRC_PK TEXT ,
UPDATE_DATETIME TIMESTAMP(6) not null )
tablespace sbd 
distributed by (TAB_NM,DATA_CHK_TP);

alter table sdg.SDG_DATA_ERR_TBL owner to ap_sbd;
