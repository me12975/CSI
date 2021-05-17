-- Schema: prestage; 
-- Author/Date: peiyi/20210514;
-- Purpose: sdg;
-- Table: sbd_tbl_header_info_log;
-- Compressed: N ;
-- Distributed: Y (h_file_name, update_datetime);

drop table if exists prestage.sbd_tbl_header_info_log;
create table prestage.sbd_tbl_header_info_log (
	h_file_name	varchar(200) not null,
	data_file_name varchar(200)	not null,
	target_tbl_name	varchar(100) not null,
	data_exch_date timestamp(6)	not null,
	data_date date not null,
	data_time time not null,
	data_cnt bigint not null default 0,
	columns	text not null,
	columns_type text not null,
	db_info varchar(200) not null,
	data_date_column varchar(50),
	data_start_date	varchar(8),
	data_end_date varchar(8),
	data_check_column varchar(50),
	data_check_value decimal(35,8),
	update_datetime	timestamp(6) not null default current_timestamp,
	exec_stus varchar(2),
	exec_datetime timestamp(6)
) 
tablespace sbd 
DISTRIBUTED by (h_file_name, update_datetime);

alter table prestage.sbd_tbl_header_info_log owner to ap_sbd;

create or replace function sdg.tf_upd_h_info() returns trigger as 
$body$
declare
	begin
		NEW.data_file_name := left(NEW.h_file_name, strpos(NEW.h_file_name, '.H'))||'D';
		NEW.target_tbl_name := 'SBD_'||split_part(NEW.h_file_name, '.',1 )||'_PRESTAGE';
		NEW.data_exch_date := split_part(NEW.h_file_name, '.', 2)::date;
		
		return NEW;
	end;
$body$
LANGUAGE plpgsql;

drop trigger if exists tr_bi_sbd_tbl_header_info_log on prestage.sbd_tbl_header_info_log;
create trigger tr_bi_sbd_tbl_header_info_log  before insert 
	on prestage.sbd_tbl_header_info_log
for each row 
	execute procedure sdg.tf_upd_h_info();
