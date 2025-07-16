A#!/bin/bash

#$ -l h_rt=24:00:00,h_data=50G
#$ -pe shared 1
#$ -N GMexperimental
#$ -cwd
#$ -m bea
#$ -o /u/scratch/d/dechavez/Bioinformatica-PUCE/RediseBio/GianlucaMa/log/primates.out
#$ -e /u/scratch/d/dechavez/Bioinformatica-PUCE/RediseBio/GianlucaMa/log/primates.err
#$ -M dechavezv

source /u/local/Modules/default/init/modules.sh
module load iqtree/2.2.2.6
iqtree2 -s primates_chk1.fna -m GTR+F+R9
