--------------------------------------------------------------------------------
--名稱：idncheck(input) RETURNS varchar
--功能：判斷 IDN 字串的類型
--I0：NULL、空字串、任意長度之半形空白字元
--I1：IDN格式正確(^[a-zA-Z][12][0-9]{8}$)
--I2：IDN格式正確(^[0-9]{10}$)
--I3：IDN格式正確(^[0-9]{7}$)
--I4：IDN格式正確(^[a-zA-Z][ABCD][0-9]{8}$)
--I5：IDN格式正確(^[0-9]{8}[a-zA-Z]{2}$)
--I6：IDN格式正確(^[a-zA-Z][89][0-9]{8}$)
--0：非IDN格式
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
--名稱：bancheck(input) RETURNS varchar
--功能：判斷 BAN 字串的類型
--B0：NULL、空字串、任意長度之半形空白
--B1：BAN格式正確(^[0-9]{8}$)
--0：非BAN格式
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
--名稱：idnbancheck(input) RETURNS varchar
--功能：判斷 IDN, BAN 字串的類型
--I0：NULL、空字串、任意長度之半形空白
--I1：IDN格式正確(^[a-zA-Z][12][0-9]{8}$)
--I2：IDN格式正確(^[0-9]{10}$)
--I3：IDN格式正確(^[0-9]{7}$)
--I4：IDN格式正確(^[a-zA-Z][ABCD][0-9]{8}$)
--I5：IDN格式正確(^[0-9]{8}[a-zA-Z]{2}$)
--I6：IDN格式正確(^[a-zA-Z][89][0-9]{8}$)
--B1：BAN格式正確(^[0-9]{8}$)
--0：非IDN或BAN格式
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
--名稱：nullcheck(input) RETURNS varchar
--功能：若輸入為NULL、空字串、任意長度之半形空白字元回傳0，其餘回傳N0
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
