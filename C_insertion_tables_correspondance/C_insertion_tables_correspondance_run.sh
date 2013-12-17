#!/bin/sh
cd `dirname $0`
 ROOT_PATH=`pwd`
 java -Xms256M -Xmx3072M -cp $ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/postgresql-8.3-603.jdbc3.jar:$ROOT_PATH/../lib/talend_file_enhanced_20070724.jar:$ROOT_PATH/../lib/talendcsv.jar:$ROOT_PATH:$ROOT_PATH/../lib/systemRoutines.jar::$ROOT_PATH/../lib/userRoutines.jar::.:$ROOT_PATH/c_insertion_tables_correspondance_0_1.jar: dvf.c_insertion_tables_correspondance_0_1.C_insertion_tables_correspondance --context=test "$@" 