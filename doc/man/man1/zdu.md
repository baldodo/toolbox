= zdu

== NAME
zdu - (toolbox) [g]Zip Disk Usage
== SYNOPSIS
[[zdu]] [((dirname))]
== DESCRIPTION

[[zdu]] donne la taille prise par le contenu du répertoire ((dirname)) (ou le répertoire courant par défaut). La commande additionne la taille ((décompressée)) des fichiers contenus dans le répertoire ((dirname)).

Les formats de fichiers compressés  pris en compte sont ((gzip)) et ((zip))
== EXEMPLE/TUTORIEL

(#
$> ls -l mon_dossier

-rw-rw-r--  dupont (( 17)) pi.txt
-rw-rw-r--  dupont (( 44)) pi.txt.gz
-rw-rw-r--  dupont ((  0)) vide
-rw-rw-r--  dupont (( 20)) vide.gz
-rw-rw-r--  dupont ((196)) vide.zip

$> gzip -l pi.txt.gz
   compressed   uncompressed  name
           44             ((17))  pi.txt

$> zdu mon_dossier

((34)) mon_dossier/
#)

pi.txt et pi.txt.gz ont pour taille décompressée ((17)) ; 17+17=((34))
vide, vide.gz, vide.zip ont pour taille décompressée 0 ; 0+0+0=0 (ou la tête à totaux)
total= 34+0 = 34
