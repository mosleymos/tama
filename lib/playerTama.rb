require 'gosu'

class PlayerTama

    def initialize

    end

    def button_down id
	if id==Gosu::KbEscape || id==Gosu::KbQ
	    close
	 end
    end

end
