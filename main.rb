load "tama.rb"
load "display.rb"
load "game_rules.rb"

require "chronic"

#Ecrand de bienvenue 
include Display
include PlayerActions

#We're in the main application in the <br>
#terminal mode


BEGIN{
    puts"Lancement du programme  #{$0}"
    puts"Programme se terminera #{$TIME_OF_LIFE} secondes"
}



ban=banner_tama
puts ban
puts "Bienvenue dans l'application tama "
puts "nous vous invitons a creer un tama"
puts ban

#We create our tama with only his name quite coool
#--
#We'll think a way to integreate some elements of<br>
#this main.rb file in tama.rb
#++
#We take tama's name with a gets chomp
nomTama =gets.chomp.to_s
puts "#{nomTama}"

#Creation de l'objet tama auquel on va pouvoir
#s'amuser.

tama=Tama.new(nomTama)
tama.tama_stats(tama) #affichage des stats du tama

#Main loop of the program<br>
#It will ask user to make some action on<br>
#the tama until tama life ends.
#tama life ends when time_to_live=0

time_to_live = $TIME_OF_LIFE

real_time=Chronic.parse("now")
time_to_die=real_time
time_to_die=Chronic.parse("#{$TIME_OF_LIFE} seconds from now")
#--
#binding.pry
#Risque de boucle infinie le tama dure 120s
#++
while  (Chronic.parse("now") <=> time_to_die) == -1
puts banner_tama
#--
#binding.pry
#++

#Main logic
#1.Ask user to enter tama name
#2.Enter in the loop:
#-Ask user to make a choice for his tama
#-The user enter his choice
#-The choice is made on the tama
#3.Return to 2 until tama life ends.
puts"Il lui reste#{real_time} round a vivre"
puts banner_tama
tama.tama_stats(tama)
time_to_live -=1
tama_actions
choice_player=gets.chomp

#--
#binding.pry
#++

choice_player.to_i

#--
#binding.pry
#++

#The main function that's act on the 
#tama.
playerChoice_act_tama(tama,choice_player)

sleep 2.5

end

END{
    puts "Fin du programme #{$0}"
    puts "Le tamagotchi est mort"
}

