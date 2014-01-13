#Module Player Actions qui se 
#charge de gerer les actions du
#joueur et son action avec le tamagotchi
load "display.rb"
load "constant.rb"

module PlayerActions
    def playerChoice_act_tama(tama,choice)
#binding.pry
	if choice ==="0"
#binding.pry
		puts"Vous nourrissez votre tama"
		tama.feed_tama

	    elsif choice === "1"
		puts "Vous eduquez votre tama"
		tama.teach_tama
	    elsif choice === "2"
		puts "Vous jouez avec votre tama"
		tama.play_with_tama
	    elsif   choice === "3"
		puts "Vous soignez votre tama"
		tama.cure_tama
	    elsif choice === "4"
		puts "Vous nettoyez votre tama"
		tama.clean_tama
	    else
		puts "je n'ai pas compris votre commande"
	end 
    end
end
module EventTama

    def natureRandom
	#eventRandom est une variable aleatoire de la nature
	eventRandom = rand(1..10).to_i
	return eventRandom
    end

    def natureEventSpecific(eventRandom)
	puts " Votre tama est:" 
    end
end
