class SpasController < ApplicationController
  
  def index
    @spas = Spa.includes(:company).order('created_at DESC')
  end
end

