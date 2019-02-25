LOAD DATA
INFILE ‘/tmp/dsd/dbgen_version_1_2.dat'
BADFILE ‘/tmp/dsd/dbgen_version_1_2..bad’
DISCARDFILE ‘/tmp/dsd/dbgen_version_1_2.dsc’
INSERT INTO TABLE dbgen_version
FIELDS TERMINATED BY “|” OPTIONALLY ENCLOSED BY ‘”‘ TRAILING
NULLCOLS
(dv_version,dv_create_date,dv_create_time,dv_cmdline_args )