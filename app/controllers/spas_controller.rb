class SpasController < ApplicationController
  
  def index
    @spas = Spa.all 
  end
end

