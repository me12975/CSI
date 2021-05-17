-- Schema: sdg; 
-- Author/Date: peiyi/20210514;
-- Purpose: sdg;
-- Table: sdg_data_header_info;
-- Compressed: N ;
-- Distributed: Y (h_file_name);

drop table if exists sdg.sdg_data_header_info;
create table sdg.sdg_data_header_info (
	h_file_name	varchar(200) not null,
	data_file_name varchar(200)	not null,
	target_tbl_name	varchar(100),
	data_exch_date timestamp(6)	not null,
	data_date date not null,
	data_time time not null,
	data_cnt bigint not null,
	columns	text not null,
	columns_type text not null,
	db_info varchar(200) not null,
	data_date_column varchar(50),
	data_start_date	varchar(8),
	data_end_date varchar(8),
	data_check_column varchar(50),
	data_check_value decimal(35,8),
	delimiter varchar(10),
	row_start varchar(10),
	row_end varchar(10),
	encoding varchar(50),
	file_size bigint,
	update_datetime	timestamp(6) not null default current_timestamp
) 
tablespace sbd 
DISTRIBUTED by (h_file_name);

alter table sdg.sdg_data_header_info add constraint pk_sdg_data_header_info PRIMARY KEY (h_file_name);

alter table sdg.sdg_data_header_info owner to ap_sbd;