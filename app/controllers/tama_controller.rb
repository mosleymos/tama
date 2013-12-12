class TamaController < ApplicationController
  def main
    @tama = Tama.new 
    @tama.to_s
#render :partial => 'tama', :object => @tama
#ajax a creuser
#redirect_to action: 'main' cause une erreur car redirection en boucle infinie
  end

  def creation_tama
  end

  def quit_tama
  end
end
