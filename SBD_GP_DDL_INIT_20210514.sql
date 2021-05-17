--user: gpadmin
--before create tables
CREATE SCHEMA prestage;
CREATE SCHEMA oltp;
CREATE ROLE ap_tax WITH LOGIN PASSWORD '1qaz@WSX3edc';
ALTER ROLE ap_tax WITH CREATEEXTTABLE(type='readable', protocol='gpfdist') CREATEEXTTABLE(type='writable', protocol='gpfdist'); 
--after create tables
GRANT ALL ON SCHEMA oltp TO ap_tax;
GRANT USAGE ON SCHEMA PRESTAGE TO ap_tax;
GRANT SELECT, INSERT, DELETE, TRUNCATE ON ALL TABLES IN SCHEMA oltp TO ap_tax;
GRANT SELECT, INSERT, DELETE ON ALL TABLES IN SCHEMA prestage TO ap_tax;
revoke DELETE ON TABLE PRESTAGE.SBD_TBL_HEADER_INFO_LOG from ap_tax;
