module Tama
        class Animal
            @@nbreAnimal=0
            @health=0
            @mental=0
            def initialize
                @health=100
                @mental=100
                @@nbreAnimal+=1
                puts "Creation de l'animal \n"
            end

            def feed
                puts"Votre animal se nourrit \n"
                return setAnimalState(health, mental)
            end

            def teach(health, mental)
                puts"Votre animal apprend quelque chose \n"
                return setAnimalState(health,mental)
            end

            def cure(health, mental)
                puts"Vous soignez votre animal \n"
                return setAnimalState(health, mental)
            end

            def clean(health, mental)
                puts"Vous nettoyez votre animal \n"
                return setAnimalState(health, mental)
            end

            def setTamaState(health, mental)
                @health +=health
                @mental +=mental
            end

        end
    end
