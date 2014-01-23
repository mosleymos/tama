
#main gem for tama app
require "chronic"
require "gosu"
require "chingu"
require "pry"
require "pry-nav"

class TamaWindow < Gosu::Window


#Main builder of the tama game window
    def initialize
    binding.pry
	super 300,300,false
	self.caption="Tama Test"
	@background_image=Gosu::Image.new(self,"./media/background.png",true)
	@presentation=Gosu::Font.new(self,"./media/04B_03__.TTF",10)
	@tama=Tama.new("moe")

    end
 binding.pry

    def update
    
    end

    def draw
	@background_image.draw(0,0,0)
	@presentation.draw("Bienvenue dans tama application",10,10,1,1,1,0xffffffff,:default)
	@tama.display_stat(self)
    end

    def button_down id
	if id==Gosu::KbEscape || id==Gosu::KbQ
	    close
	end
    end

end


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

    def display_stat(game_window)
	@health_stat=Gosu::Font.new(game_window,"./media/04B_03__.TTF",22)
	@health.draw("#{tama.health}",100,100,1,1,1,0xffffffff,:default)


    end

    def draw
	@health_stat.draw(0,100,0)
    end

    
end 

#end of the tama class


#main program
window=TamaWindow.new
window.show



