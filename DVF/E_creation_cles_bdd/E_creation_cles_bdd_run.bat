%~d0
 cd %~dp0
 java -Xms256M -Xmx1024M -cp ../lib/dom4j-1.6.1.jar;../lib/postgresql-8.3-603.jdbc3.jar;../lib/systemRoutines.jar;../lib/userRoutines.jar;.;e_creation_cles_bdd_0_1.jar; dvf.e_creation_cles_bdd_0_1.E_creation_cles_bdd --context=test %* 