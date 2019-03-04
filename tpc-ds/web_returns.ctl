LOAD DATA
INFILE '/tmp/dsd/customer_1_2.dat'
BADFILE '/tmp/dsd/customer_1_2.bad'
DISCARDFILE '/tmp/dsd/customer_1_2.dsc'
INSERT INTO TABLE customer
FIELDS TERMINATED BY "|" OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(
 )


















