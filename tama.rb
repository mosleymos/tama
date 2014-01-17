load "constant.rb"
require "date"
require "chronic"

#Class Tama is the main object of our application<br>
#Tama is a tamagotchi. <br>
#A tamagotchi is a virtual pet which you can interact<br>

class Tama


attr_accessor :name
attr_reader :health, :mental_state, :Date_of_Birth, :state, :mood

#Main builder of the application it create our tama<br>
#object
    def initialize(nom)
	@name=nom
	@Date_of_Birth=Chronic.parse("now")
	@health=$HEALTH_TAMA
	@mental_state=$MENTAL_TAMA
	@state=$STATE_OF_LIFE[0]
	@mood=$MOOD[3]

    end

#Function in order to feed our tama
    def feed_tama
	@health += 30
    end 

#function in order to teach something
#to our tama
    def teach_tama
	@mental_state +=10
    end 

#You can play vwith your tama.<br>
#it will change in a good way is <br>
#ental state<br>
    def play_with_tama
	@mental_state +=50
    end 

#Cure our tama
    def cure_tama
	@mental_state +=50
    end 

#Nettoyer le tama
    def clean_tama
	@mental_state +=30
	@health +=50
    end 


end 
