CREATE DATABASE tutorial
     DATAFILE 'tutorial_datafile' SIZE 10M
     LOGFILE GROUP 1 ('test_log1w', 'test_log1z') SIZE 500K,
     GROUP 2 ('test_log2w', 'test_log2w') SIZE 500K;