# encoding: utf-8
module Tama
require 'chronic'
require_relative 'constant'

    #Classe animal dont herite Virtualanimal.
    #Elle contient toutes la base du tamagotchi
        class Animal
            @@nbreAnimal=0 #Un player ne devra pas avoir plus d'un tama
            attr_reader :health
            attr_reader :mental
            attr_reader :DateBirth
            attr_reader :Date_of_death

            #Construteur principal
            def initialize
                @health=100
                @mental=100
                @@nbreAnimal+=1
                puts "Creation de l'animal \n"
                @DateBirth=Chronic.parse("now")
                @Date_of_death=Chronic.parse("#{$TIME_OF_LIFE} minutes from now")
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

            #Fonction qui gerera la vie de l'objet tama
            def lifeManagement

            end

            def DieOfTama
                ObjectSpace.garbage_collect
            end

            
        end
    end
