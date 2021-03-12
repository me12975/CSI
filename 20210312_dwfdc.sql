--------------------------------------------------------------------------------
--�W�١Gidncheck(input) RETURNS varchar
--�\��G�P�_ IDN �r�ꪺ����
--I0�GNULL�B�Ŧr��B���N���פ��b�Ϊťզr��
--I1�GIDN�榡���T(^[a-zA-Z][12][0-9]{8}$)
--I2�GIDN�榡���T(^[0-9]{10}$)
--I3�GIDN�榡���T(^[0-9]{7}$)
--I4�GIDN�榡���T(^[a-zA-Z][ABCD][0-9]{8}$)
--I5�GIDN�榡���T(^[0-9]{8}[a-zA-Z]{2}$)
--I6�GIDN�榡���T(^[a-zA-Z][89][0-9]{8}$)
--0�G�DIDN�榡
--------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION sdg.idncheck(input varchar) RETURNS varchar AS $$
  SELECT
  CASE
    WHEN input IS NULL OR char_length(trim(input)) = 0 THEN 'I0'
    WHEN char_length(trim(input)) not in (7,10) THEN '0'
    WHEN char_length(trim(input)) = 10 THEN
    CASE
      WHEN trim(input) ~ '^[a-zA-Z][12][0-9]{8}$' THEN 'I1'
      WHEN trim(input) ~ '^[0-9]{10}$' THEN 'I2'
      WHEN trim(input) ~ '^[a-zA-Z][ABCD][0-9]{8}$' THEN 'I4'
      WHEN trim(input) ~ '^[0-9]{8}[a-zA-Z]{2}$' THEN 'I5'
      WHEN trim(input) ~ '^[a-zA-Z][89][0-9]{8}$' THEN 'I6'
      ELSE '0'
    END
    WHEN char_length(trim(input)) = 7 THEN
      CASE WHEN trim(input) ~ '^[0-9]{7}$' THEN 'I3' ELSE '0' END
  END
$$ LANGUAGE SQL;

--------------------------------------------------------------------------------
--�W�١Gbancheck(input) RETURNS varchar
--�\��G�P�_ BAN �r�ꪺ����
--B0�GNULL�B�Ŧr��B���N���פ��b�Ϊť�
--B1�GBAN�榡���T(^[0-9]{8}$)
--0�G�DBAN�榡
--------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION sdg.bancheck(input varchar) RETURNS varchar AS $$
  SELECT
  CASE
    WHEN input IS NULL OR char_length(trim(input)) = 0 THEN 'B0'
    WHEN char_length(trim(input)) = 8 THEN
      CASE WHEN trim(input) ~ '^[0-9]{8}$' THEN 'B1' ELSE '0' END
    ELSE '0'
  END
$$ LANGUAGE SQL;

--------------------------------------------------------------------------------
--�W�١Gidnbancheck(input) RETURNS varchar
--�\��G�P�_ IDN, BAN �r�ꪺ����
--I0�GNULL�B�Ŧr��B���N���פ��b�Ϊť�
--I1�GIDN�榡���T(^[a-zA-Z][12][0-9]{8}$)
--I2�GIDN�榡���T(^[0-9]{10}$)
--I3�GIDN�榡���T(^[0-9]{7}$)
--I4�GIDN�榡���T(^[a-zA-Z][ABCD][0-9]{8}$)
--I5�GIDN�榡���T(^[0-9]{8}[a-zA-Z]{2}$)
--I6�GIDN�榡���T(^[a-zA-Z][89][0-9]{8}$)
--B1�GBAN�榡���T(^[0-9]{8}$)
--0�G�DIDN��BAN�榡
--------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION sdg.idnbancheck(input varchar) RETURNS varchar AS $$
  SELECT
  CASE
    WHEN input IS NULL OR char_length(trim(input)) = 0 THEN 'I0'
    WHEN char_length(trim(input)) not in (7,8,10) THEN '0'
    WHEN char_length(trim(input)) = 8 THEN
      CASE WHEN trim(input) ~ '^[0-9]{8}$' THEN 'B1' ELSE '0' END
    WHEN char_length(trim(input)) = 10 THEN
    CASE
      WHEN trim(input) ~ '^[a-zA-Z][12][0-9]{8}$' THEN 'I1'
      WHEN trim(input) ~ '^[0-9]{10}$' THEN 'I2'
      WHEN trim(input) ~ '^[a-zA-Z][ABCD][0-9]{8}$' THEN 'I4'
      WHEN trim(input) ~ '^[0-9]{8}[a-zA-Z]{2}$' THEN 'I5'
      WHEN trim(input) ~ '^[a-zA-Z][89][0-9]{8}$' THEN 'I6'
      ELSE '0'
    END
    WHEN char_length(trim(input)) = 7 THEN
      CASE WHEN trim(input) ~ '^[0-9]{7}$' THEN 'I3' ELSE '0' END
  END
$$ LANGUAGE SQL;

--------------------------------------------------------------------------------
--�W�١Gnullcheck(input) RETURNS varchar
--�\��G�Y��J��NULL�B�Ŧr��B���N���פ��b�Ϊťզr���^��0�A��l�^��N0
--------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION sdg.nullcheck(input varchar) RETURNS varchar AS $$
  SELECT
  CASE
    WHEN input IS NULL OR char_length(trim(input)) = 0 THEN '0'
    ELSE 'N0'
  END
$$ LANGUAGE SQL;


grant all on function sdg.idncheck(input varchar) to ap_sbd;
grant all on function sdg.bancheck(input varchar) to ap_sbd;
grant all on function sdg.idnbancheck(input varchar) to ap_sbd;
grant all on function sdg.nullcheck(input varchar) to ap_sbd;
