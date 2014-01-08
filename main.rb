load "tama.rb"
load "display.rb"


#Ecrand de bienvenue 
include Display

ban=banner_tama
puts ban
puts "Bienvenue dans l'application tama "
puts "nous vous invitons à creer un tama"
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

time_to_live = $TIME_OF_LIFE
while time_to_live !=0

puts time_to_live
time_to_live -=1

end



