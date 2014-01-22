require 'gosu'

class PlayerTama

    def button_down id
	if id==Gosu::KbEscape || id==Gosu::KbQ
	    close
    end
end
