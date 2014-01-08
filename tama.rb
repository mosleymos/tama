load "constant.rb"
load "display.rb"
require "date"

class Tama

include Display


def initialize(nom)
    @name=nom
    @Date_of_Birth=DateTime.now
    @health=$HEALTH_TAMA
    @mental_state=$MENTAL_TAMA

end


def feed_tama

end 

def teach_tama

end 

def play_with_tama

end 

def cure_tama

end 

def clean_tama

end 


end 
