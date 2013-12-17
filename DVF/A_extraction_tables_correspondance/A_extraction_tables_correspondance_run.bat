%~d0
 cd %~dp0
 java -Xms256M -Xmx3072M -cp ../lib/dom4j-1.6.1.jar;../lib/external_sort.jar;../lib/talend_file_enhanced_20070724.jar;../lib/talendcsv.jar;../lib/systemRoutines.jar;../lib/userRoutines.jar;.;a_extraction_tables_correspondance_0_2.jar; dvf.a_extraction_tables_correspondance_0_2.A_extraction_tables_correspondance --context=test %* 