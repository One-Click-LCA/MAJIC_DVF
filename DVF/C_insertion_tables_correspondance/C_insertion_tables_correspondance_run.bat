%~d0
 cd %~dp0
 java -Xms256M -Xmx3072M -cp ../lib/dom4j-1.6.1.jar;../lib/postgresql-8.3-603.jdbc3.jar;../lib/talend_file_enhanced_20070724.jar;../lib/talendcsv.jar;../lib/systemRoutines.jar;../lib/userRoutines.jar;.;c_insertion_tables_correspondance_0_1.jar; dvf.c_insertion_tables_correspondance_0_1.C_insertion_tables_correspondance --context=test %* 