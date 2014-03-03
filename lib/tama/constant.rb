# encoding: utf-8
module Tama
#Creer une classe ou liste de constantes
#qui comprendront tout ce que devra etre 
#statique sur le tama


#Constante globale qui determine le temps de vie de tout tamagotchi

    $TIME_OF_LIFE=3600

# Tableau qui determine les etats de vie du tamagotchi
    
    $STATE_OF_LIFE=["Oeuf","bebe","enfant","adulte","age","mort"]

#Humeur du tama 

    $MOOD=["heureux","neutre","melancolique","depressif","triste"]

# Un tama ne peut pas etre immortel => cette constante assure ce probleme
# A reflechir dessus

    $TAMA_MAX_LIFE=9600


end
