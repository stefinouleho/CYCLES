#!/bin/sh

#  similarite_olivier.sh
#  
#
#  Created by Stefi Nouleho on 08/01/2018.
#
K=7
LC=0
fichier="molecules_olivier"
for i in $(seq 1 $K); do
    read chebi_id taille;
    echo $chebi_id
    ./modelisation $chebi_id $taille $LC
done < "$fichier"
