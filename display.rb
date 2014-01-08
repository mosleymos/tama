# Le module display possede les fonction qui gere
#l'affichage au sein de notre application en 
#ligne de commande
#
module Display

    def confirmation
	puts "Souhaitez vous confirmer ? y/n"
	choice = gets.chomp()

	if choice == "y" || choice =="Y"
	    return true
	else choice =="n" || choice=="N"
	    return false
	end
    end

#Affichage des statistiques sur le tama courant.
    def tama_stats(tama)
	banner_tama
	puts"Etat actuel de votre Tama"
	puts"Nom: \t #{tama.name}"
	puts"Nee: \t #{tama.Date_of_Birth}"
	puts"Pdv: \t #{tama.health}"
	puts"Men: \t #{tama.mental_state}"
	puts"Sta: \t #{tama.state}"
	banner_tama
	
    end

    def banner_tama
	puts "******************************"
	puts "******************************"
    end

    def entree_utilisateur
	prompt=":>"
	input=STDIN.get.chomp
	return input
    end
end
