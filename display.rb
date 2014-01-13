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
	15.times{print"-"}
	print'\n'
    end

    def entree_utilisateur
	prompt=">"
	input=gets
	return input
    end

    def tama_actions
	banner_tama
	puts "Veuillez choisir une action sur votre tama pour son bien"
	puts "Entrez votre choix par le nombre pour l'action"
	puts "Entrez 0 \t Nourrir votre tama"
	puts "Entrez 1 \t Eduquer votre tama"
	puts "Entrez 2 \t Jouer avec votre tama"
	puts "Entrez 3 \t Soigner votre tama"
	puts "Entrez 4 \t Nettoyer votre tama"

	
    end
end
