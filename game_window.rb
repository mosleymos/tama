require "gosu"
load "tama.rb"


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

