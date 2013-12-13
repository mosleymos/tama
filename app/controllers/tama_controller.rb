class TamaController < ApplicationController
  def main
    
    @tama = Tama.new(:name => params[:tamaName], :health => 100, :mentalState => 100, :BirthDate => DateTime.now) 
    @tama.save
    @tama.to_s

  end

  def creation_tama
    
  end

  def feed_tama
    @tama.health +=10
  end

  def cure_tama
    @tama.health +=20
    @tama.mentalState +=20
  end

  def clean_tama
    @tama.health +=30
  end

  def play_with_tama
    @tama.mentalState +=50
  end

  def quit_tama
  end
end
