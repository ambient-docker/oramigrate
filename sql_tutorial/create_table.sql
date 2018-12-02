CREATE DATABASE test
     DATAFILE 'test_system' SIZE 10M
     LOGFILE GROUP 1 ('test_log1a', 'test_log1b') SIZE 500K,
     GROUP 2 ('test_log2a', 'test_log2b') SIZE 500K;