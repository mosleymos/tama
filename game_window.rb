require "gosu"
require "texplay"
load "tama.rb"
load "display.rb"
load "game_rules.rb"

class GameWindow < Gosu::Window
    def initialize
	super 300,300,false
	self.caption="Tama Test"
	@background_image=Gosu::Image.new(self,"background.png",true)
	@presentation=Gosu::Font.new(self,"./04B_03__.TTF",10)
#Instruction pour initialisation du son a voir pour plus tard
#	@son=Gosu::Sound.new(self,"./note_2.ogg")
#	@text=Gosu::Text_input.new

    end

    def update

    end

    def draw
	@background_image.draw(0,0,0)
	@presentation.draw("Bonjour",10,10,10,1,1,0xffffffff,:default)
#	@son.play(false)

    end

end

window=GameWindow.new
window.show
#window.paint{
#    circle 20,20,10, :color => :red
#}


#text=Gosu::Fonti.new
#text=draw("Bon",10,10,10,1,1,0xffffffff,:default) 
