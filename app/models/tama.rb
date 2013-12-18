class Tama < ActiveRecord::Base
    @name
    @health
    @mentalState
    @BirthDate

#Fonctions pour modifier les valeurs.
    def modifState(mental=0,health=0)
	@health += health
	@mentalState += mental
    end
	
end
