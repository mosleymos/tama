class TamaController < ApplicationController
  def main
    @tama = DateTime.now
    @tama.to_s
  end

  def creation_tama
  end

  def quit_tama
  end
end
