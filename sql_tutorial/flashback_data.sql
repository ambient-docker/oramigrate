SQL> variable scn number
SQL> exec :scn := dbms_flashback.get_system_change_number;

PL/SQL procedure successfully completed.

SQL> print scn;

       SCN
----------
    399425

SELECT DECODE(value, NULL, 'PFILE', 'SPFILE') "Init File Type"
   FROM sys.v_$parameter WHERE name = 'spfile';

show parameter spfile;

mkdir -p /u01/app/oracle/admin/WE/adump
chown oracle:dba /u01/app/oracle/admin/WE/adump

startup pfile='/tmp/pfileWE.ora'
--Error controlfiles are missing
startup

alter database backup controlfile to trace as '/tmp/svg_ctrl.txt';

# Keep command history
apt-get install rlwrap
touch ~/.sqlplus_history
alias sqlplus="rlwrap -i -f ~/.sqlplus_history -H ~/.sqlplus_history -s 30000 sqlplus"
