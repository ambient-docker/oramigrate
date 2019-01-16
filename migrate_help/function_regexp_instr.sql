CREATE or REPLACE FUNCTION regexp_instr(msg varchar(20))
RETURNS varchar AS
$$
DECLARE
    v_value varchar(20);
BEGIN
   v_value := '';
   v_value := trim(both msg);
   RETURN v_value;
END;
$$
LANGUAGE 'plpgsql' IMMUTABLE
SECURITY DEFINER
COST 10;
