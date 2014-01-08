%~d0
 cd %~dp0
 java -Xms256M -Xmx1024M -cp ../lib/dom4j-1.6.1.jar;../lib/external_sort.jar;../lib/talend_file_enhanced_20070724.jar;../lib/talendcsv.jar;../lib/systemRoutines.jar;../lib/userRoutines.jar;.;etape4_info_bati_0_1.jar; majic.etape4_info_bati_0_1.etape4_info_bati --context=Default %* 