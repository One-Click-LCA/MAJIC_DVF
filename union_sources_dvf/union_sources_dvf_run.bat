%~d0
 cd %~dp0
 java -Xms256M -Xmx2048M -cp ../lib/dom4j-1.6.1.jar;../lib/jakarta-oro-2.0.8.jar;../lib/talend_file_enhanced_20070724.jar;../lib/talendcsv.jar;../lib/systemRoutines.jar;../lib/userRoutines.jar;.;union_sources_dvf_0_1.jar; dvf.union_sources_dvf_0_1.union_sources_dvf --context=test %* 