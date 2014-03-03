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
                @health=$TAMA_HEALTH
                @mental=$TAMA_MENTAL
                @@nbreAnimal+=1
                puts "Creation de l'animal \n"
                @DateBirth=Chronic.parse("now")
                @Date_of_death=Chronic.parse("#{$TIME_OF_LIFE} minutes from now")
            end

            #Fonction manger du tama 
            def feed
                puts"Votre animal se nourrit \n"
                @health += 30
                return 1
            end

            #Fonction enseigner du tama
            def teach
                puts"Votre animal apprend quelque chose \n"
                @mental += 10
                return 2
            end

            #Fonction soigner du tama
            def cure
                puts"Vous soignez votre animal \n"
                @mental +=30
                @health +=60
                return 3
            end

            #Fonction nettoyer le tama - le faire prendre
            #un bain
            def clean
                puts"Vous nettoyez votre animal \n"
                @mental +=10
                @health +=30
                return 4
            end

            #Fonction qui permet de savoir 
            #si le tama est vivant ou mort

            def isAlive?
                time_to_die=@Date_of_death
                actual_time=Chronic.parse("now")
                    if actual_time > time_to_die 
                        puts "Votre tama est mort"
                        return false
                    else
                        puts "Votre tama est vivant"
                        return true
                    end
            end



            def DieOfTama
                ObjectSpace.garbage_collect
            end

            
        end
    end
