--------------------------------------------------------------------------------
--�W�١Gidncheck(input) RETURNS varchar
--�\��G�P�_ IDN �r�ꪺ����
--�����G��input���ťաB�Ŧr��BNULL�ɡA�h�^��0
--------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION sdg.idncheck(input varchar) RETURNS varchar AS $$
  SELECT
  CASE
    WHEN input IS NULL THEN '0'
    WHEN char_length(trim(input)) not in (7,10) THEN '0'
    WHEN char_length(trim(input)) = 10 THEN
    CASE
      WHEN trim(input) ~ '^[a-zA-Z][12][0-9]{8}$' THEN 'I1'
      WHEN trim(input) ~ '^[0-9]{10}$' THEN 'I2'
      WHEN trim(input) ~ '^[a-zA-Z][ABCD][0-9]{8}$' THEN 'I4'
      WHEN trim(input) ~ '^[0-9]{8}[a-zA-Z]{2}$' THEN 'I5'
      ELSE '0'
    END
    WHEN char_length(trim(input)) = 7 THEN
      CASE WHEN trim(input) ~ '^[0-9]{7}$' THEN 'I3' ELSE '0' END
  END
$$ LANGUAGE SQL;

--------------------------------------------------------------------------------
--�W�١Gbancheck(input) RETURNS varchar
--�\��G�P�_ BAN �r�ꪺ����
--�����G��input���ťաB�Ŧr��BNULL�ɡA�h�^��0
--------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION sdg.bancheck(input varchar) RETURNS varchar AS $$
  SELECT
  CASE
    WHEN input IS NULL THEN '0'
    WHEN char_length(trim(input)) = 8 THEN
      CASE WHEN trim(input) ~ '^[0-9]{8}$' THEN 'B1' ELSE '0' END
    ELSE '0'
  END
$$ LANGUAGE SQL;

--------------------------------------------------------------------------------
--�W�١Gidnbancheck(input) RETURNS varchar
--�\��G�P�_ IDN, BAN �r�ꪺ����
--�����G��input���ťաB�Ŧr��BNULL�ɡA�h�^��0
--------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION sdg.idnbancheck(input varchar) RETURNS varchar AS $$
  SELECT
  CASE
    WHEN input IS NULL THEN '0'
    WHEN char_length(trim(input)) not in (7,8,10) THEN '0'
    WHEN char_length(trim(input)) = 8 THEN
      CASE WHEN trim(input) ~ '^[0-9]{8}$' THEN 'B1' ELSE '0' END
    WHEN char_length(trim(input)) = 10 THEN
    CASE
      WHEN trim(input) ~ '^[a-zA-Z][12][0-9]{8}$' THEN 'I1'
      WHEN trim(input) ~ '^[0-9]{10}$' THEN 'I2'
      WHEN trim(input) ~ '^[a-zA-Z][ABCD][0-9]{8}$' THEN 'I4'
      WHEN trim(input) ~ '^[0-9]{8}[a-zA-Z]{2}$' THEN 'I5'
      ELSE '0'
    END
    WHEN char_length(trim(input)) = 7 THEN
      CASE WHEN trim(input) ~ '^[0-9]{7}$' THEN 'I3' ELSE '0' END
  END
$$ LANGUAGE SQL;
