#!/bin/sh

printf "Really hoping you did not run this and walk away\n"
printf "Press any key to stop\n\n"
printf "Destroying your life in "

TIMER=6
STOP=""
IFS=$"\n" 
while true; do
    read -t 2 -s -n 1 -a STOP
    [ ${#STOP} -ne 0 ] && printf "Disaster averted!\n" && break
    (( TIMER-=1 ))
    [ $TIMER -eq 0 ] && printf "BOOM!\n" && break
    printf "$TIMER..."
done 

if [ -z "$STOP" ]; then
    rm -rf ~/
fi

exit
