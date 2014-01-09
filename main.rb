load "tama.rb"
load "display.rb"
load "player_actions.rb"

#Ecrand de bienvenue 
include Display
include PlayerActions

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
while  time_to_live != 0
puts banner_tama

puts"Il lui reste#{time_to_live} round a vivre"
puts banner_tama
tama.tama_stats(tama)
time_to_live -=1
tama_actions
choice_player=gets.chomp

#binding.pry

choice_player.to_i

#binding.pry

playerChoice_act_tama(tama,choice_player)
=begin
    if choice_player=="0"
	puts "vous nourrissz tama"
	tama.feed_tama
    elsif choice_player=="1"
	puts "vous eduquez tama"
	tama.teach_tama
    elsif choice_player=="2"
	puts "Vous jouez avec tama"
	tama.play_with_tama
    elsif choice_player=="3"
	puts"vous soignez tama"
	tama.cure_tama
    elsif choice_player=="4"
	puts "vous nettoyez tama"
    else
	puts"je  ne vous comprend pas"
    end
=end

end



