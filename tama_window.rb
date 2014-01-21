require 'gosu'

class TamaWindow <Gosu::Window

MAIN=0

    def initialize

	#Initialisation of the main game window
	@tamaGame=Gosu::Window.new(300,300,false)
	@tamaGame.caption="TamaGame"	
i#	@background_image=Gosu::Image.new(self,"background.png",true)
#	@presentation=Gosu::Font.new(self,"./04B_03__.TTF",10)
#

    end

    def tama_life
	#First display welcome to tama app during 3seconds
	

	#Second display a tama and ask user which action
	# he wants to do


	###Third actions are make by the player until the 
	#tama life ==0 
    end
    
    def draw
	@background_image.draw(0,0,0)
    end

    def show

    end

    def update

    end

end

tamaGame=TamaWindow.new
e=Gosu::Image.new(tamaGame,"background.png",true)
#
tamaGame.show
