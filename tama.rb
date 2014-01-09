load "constant.rb"
require "date"

class Tama


attr_accessor :name
attr_reader :health, :mental_state, :Date_of_Birth, :state

#Constructeur principal
    def initialize(nom)
	@name=nom
	@Date_of_Birth=DateTime.now
	@health=100
	@mental_state=100
	@state=$STATE_OF_LIFE[0]

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
