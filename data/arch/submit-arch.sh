#!/bin/bash
# following option makes sure the job will run in the current directory
#$ -cwd
# following option makes sure the job has the same environmnent variables as the submission shell
#$ -V
# following option to change shell
#$ -S /bin/bash

HOST=$(echo $HOSTNAME | cut -f 1 -d'.')

PROG=lscpu
$PROG > ${PROG}-${HOST}

PROG='lstopo'
$PROG > ${PROG}-${HOST}
PROGFIG='lstopo --of fig map.fig'
$PROGFIG 
mv map.fig map-${HOST}.fig
