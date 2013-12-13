class TamaController < ApplicationController
#Action principale du tama
  def main
    @tama = Tama.new(:name => params[:tamaName], :health => 100, :mentalState => 100, :BirthDate => DateTime.now) 
    @tama.save
    @tama.to_s

  end
#Action qui envoie a la page de creation du tama
  def creation_tama
    
  end
#Action nourrir le tama
  def feed_tama
    @tama.health +=10
  end
#Action soigner le tama
  def cure_tama
    @tama.health +=20
    @tama.mentalState +=20
  end
#Action nettoyer le tama
  def clean_tama
    @tama.health +=30
  end
#Actuib jouer avec le tama
  def play_with_tama
    @tama.mentalState +=50
  end
#Action de quitter le jeu tama
  def quit_tama
  end
end
