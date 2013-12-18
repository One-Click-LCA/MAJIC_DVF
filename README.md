MAJIC_DVF
=========

ETL permettant l'extraction et le traitement des données foncières diffusées par la DGFiP

Utilisation
-----------

# 1. Paramétrer les fichiers de contexte #

Les fichiers de contexte se trouvent pour chaque "job" dans le sous-répertoire "dvf/_nomdujob_/contexts/test.properties"

Paramètres de la base de données:
- db_host : hôte de la base postgres
- db_port :  
- db_name : nom de la base (La base doit exister)
- db_login : identifiant de connexion à la base de données
- db_password : mot de passe associé à l'identifiant
- db_schema : schéma dans la base où seront créées les tables
- prefixe_table : préfixe à ajouter au nom des tables

Localisation des fichiers source
- source_path : chemin du répertoire du fichier source
- dvf_file : nom du fichier source à importer

Localisation des répertoires de travail
- tables_correspondance_path : répertoire de stockage des fichiers .csv des tables de correspondance (dictionnaires)
- temp_path : répertoire de stockage des fichiers temporaires utilisés par certains composants des jobs
- target_path : répertoire de stockage des fichiers .csv intermédiaires issus des extractions du fichier source
- log_path : répertoire de stockage des fichiers de log d'erreurs (doublons, lignes rejetées)

Il est nécessaire de s'assurer que l'utilisateur dispose bien des droits d'écriture sur ces répertoires

## 2. Exécuter le job ##

En fonction de la plateforme, dans chaque répertoire de job, un fichier .bat (windows) ou .sh (unix / osx) permet d'exécuter le job.

Sous linux / osx :
- rendre les jobs exécutables
chmod 0777 _nomdujob_/_nomdujob_.sh
- exécuter le job
./_nomdujob_/_nomdujob_.sh


Les jobs s'exécutent dans l'ordre suivant:
- A_extraction_tables_correspondance : extraction des tables de correspondance (dictionnaires) du fichier source et création des fichiers csv.
- B_extraction_donnees_avec_cles : extraction des différentes tables à partir du fichier source avec les clés naturelles, ainsi que les clés primaires de type 'serial'.
- C_insertion_tables_correspondance : insertion des tables de correspondance (dictionnaires) dans la base de données.
- D_insertion_donnees : insertion des données DVF et création de l'ensemble des clés. 

Les jobs 'A' et 'C' concernant les dictionnaires, il n'est pas forcément nécessaire de les exécuter à chaque import s'ils sont exhaustif. Il pourrait être envisagé de partager directement ces dictionnaires.

