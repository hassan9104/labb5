#!/bin/bash

# En variabel för datum av den koprimerade mappen

Currentd=$(date +"%Y-%m-%d-%H.%M.%S")

Dirpath=mapp  

Backupath=$HOME/backup # Destination

[ ! -d $Backupath ] && `mkdir -p  $Backupath`

if [ ! -r "$Dirpath" ];then
echo  "Mappen är ej läsbar."
   elif [ -d "$Dirpath" ];then
	$(tar --recursion -czf  backupfile.tar.gz $Dirpath)
	mv backupfile.tar.gz $Backupath/backupfile_$Currentd.tar.gz
	echo "En Backup har gjorts av $Dirpath."
   else echo "Någonting gick fel."
   fi
exit 0 
