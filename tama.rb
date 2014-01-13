load "constant.rb"
require "date"
require "chronic"

class Tama


attr_accessor :name
attr_reader :health, :mental_state, :Date_of_Birth, :state, :mood

#Constructeur principal
    def initialize(nom)
	@name=nom
	@Date_of_Birth=Chronic.parse("now")
	@health=$HEALTH_TAMA
	@mental_state=$MENTAL_TAMA
	@state=$STATE_OF_LIFE[0]
	@mood=$MOOD[3]

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
