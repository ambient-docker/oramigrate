SQL> variable scn number
SQL> exec :scn := dbms_flashback.get_system_change_number;

PL/SQL procedure successfully completed.

SQL> print scn;

       SCN
----------
    399425
