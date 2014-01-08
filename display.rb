module Display

    def confirmation
	puts "Souhaitez vous confirmer ? y/n"
	choice = gets.chomp()

	if choice == "y" || choice =="Y"
	    return true
	else if choice =="n" || choice=="N"
	    return false
	else 
	    puts "instruction illisible"
	end
end
