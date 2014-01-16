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
    end

    def update

    end

    def draw
	@background_image.draw(0,0,0)
    end

end

window=GameWindow.new
window.show
text=Gosu::Fonti.new
text=draw("#{banner_tama}",10,10,10,1,1,0xffffffff,:default) 
