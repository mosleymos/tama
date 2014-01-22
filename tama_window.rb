#!/usr/bin/env ruby

require 'gosu'
require 'chingu'
#require_relative File.expand_path('lib/tama.rb')
#require File.expand_path('lib/tama.rb',__FILE__)
load 'lib/tama.rb'
load 'lib/playerTama.rb'

class TamaWindow < Gosu::Window


#Main builder of the tama game window
    def initialize
	super 300,300,false
	self.caption="Tama Test"
	@background_image=Gosu::Image.new(self,"./media/background.png",true)
	@presentation=Gosu::Font.new(self,"./media/04B_03__.TTF",10)

    end

    def update
    
    end

    def draw
	@background_image.draw(0,0,0)
	@presentation.draw("Bienvenue dans tama application",10,10,1,1,1,0xffffffff,:default)
	@presentation.draw("essai oon",10,10,1,1,1,0xffffffff,:default)

    end

=begin
    def button_down id
	if id==Gosu::KbEscape || id==Gosu::KbQ
	    close
	end
    end
=end

end

window=TamaWindow.new
window.show
