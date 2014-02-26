# encoding: utf-8
module Tama
    #Classe animal dont herite Virtualanimal.
    #Elle contient toutes la base du tamagotchi
        class Animal
            @@nbreAnimal=0 #Un player ne devra pas avoir plus d'un tama
            @health=0
            @mental=0

            #Construteur principal
            def initialize
                @health=100
                @mental=100
                @@nbreAnimal+=1
                puts "Creation de l'animal \n"
            end

            #Fonction manger du tama 
            def feed(health, mental)
                puts"Votre animal se nourrit \n"
                return 1
            end

            #Fonction enseigner du tama
            def teach(health, mental)
                puts"Votre animal apprend quelque chose \n"
                return 2
            end

            #Fonction soigner du tama
            def cure(health, mental)
                puts"Vous soignez votre animal \n"
                return 3
            end

            #Fonction nettoyer le tama - le faire prendre
            #un bain
            def clean(health, mental)
                puts"Vous nettoyez votre animal \n"
                return 4
            end
            
        end
    end
