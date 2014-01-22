require "chronic"

class Tama 
#It's the main tama class it's create a tama which we can play


	HEALTH_TAMA=100
	MENTAL_TAMA=100
	STATE_OF_LIFE=["oeuf","enfant","adulte","senior","mort"]
	MOOD=["neutre","joyeux","triste"]


attr_accessor :name
attr_reader :health, :mental_state, :Date_of_Birth, :state, :mood

#Main builder of the tama object
    def initialize(nom)
	@name=nom
	@Date_of_Birth=Chronic.parse("now")
	@health=HEALTH_TAMA
	@mental_state=MENTAL_TAMA
	@state=STATE_OF_LIFE[0]
	@mood=MOOD[0]
	
    end

#Nourrir le tama
    def feed_tama
	@health += 30
    end 

#Eduquer le tama
    def teach_tama
	@mental_state +=10
    end 

#Jouer avec le tama    
    def play_with_tama
	@mental_state +=50
    end 

#Soigner le tama
    def cure_tama
	@mental_state +=50
    end 

#Nettoyer le tama
    def clean_tama
	@mental_state +=30
	@health +=50
    end

    
end 


