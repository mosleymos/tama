load "tama.rb"
load "display.rb"
load "game_rules.rb"

require "chronic"

#Ecrand de bienvenue 
include Display
include PlayerActions

BEGIN{
    puts"Lancement du programme  #{$0}"
    puts"Programme se terminera #{$TIME_OF_LIFE} secondes"
}



ban=banner_tama
puts ban
puts "Bienvenue dans l'application tama "
puts "nous vous invitons a creer un tama"
puts ban

#On procede a la creation du tama en entrant son nom

nomTama =gets.chomp.to_s
puts "#{nomTama}"

#Creation de l'objet tama auquel on va pouvoir
#s'amuser.

tama=Tama.new(nomTama)
tama.tama_stats(tama) #affichage des stats du tama

#Boucle principale du programme Tama
#Boucle de la vie
#Elle se termine lorsque time_to_live=0

time_to_live = $TIME_OF_LIFE

real_time=Chronic.parse("now")
time_to_die=real_time
time_to_die=Chronic.parse("#{$TIME_OF_LIFE} seconds from now")

#binding.pry

#Risque de boucle infinie le tama dure 120s

while  (Chronic.parse("now") <=> time_to_die) == -1
puts banner_tama

#binding.pry

puts"Il lui reste#{real_time} round a vivre"
puts banner_tama
tama.tama_stats(tama)
time_to_live -=1
tama_actions
choice_player=gets.chomp

#binding.pry

choice_player.to_i

#binding.pry

playerChoice_act_tama(tama,choice_player)

sleep 2.5

end

END{
    puts "Fin du programme #{$0}"
    puts "Le tamagotchi est mort"
}

