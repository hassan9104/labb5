#!/bin/bash
G=30 # Här sätts lite variabler
VG=48
Sum=0
File=betyg.txt

Points=$(tail -n +1  $File | awk '{print $1}')
#
# här loopas det, plockas poäng rad för rad.
#
    for i in ${Points[*]};do
	Sum=$((Sum+i))
   done

   clear
echo "$USER: DITT BETYG PÅ provet!" 
	echo "du fick totalt $Sum poäng på provet" 

   if [ $Sum -ge $VG ];then
	echo "Detta gav dig ett VG"
   elif [ $Sum -ge $G -a  $Sum -le $VG ];then
	echo "Detta gav dig ett G"
   else
	echo "Du fick IG på provet!"
   fi
exit 0 
