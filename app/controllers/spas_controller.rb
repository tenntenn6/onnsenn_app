class SpasController < ApplicationController
  
  def index
    @spas = Spa.includes(:company).order('created_at DESC')
  end

  def new
    @spa = Spa.new
  end

  def create
    Spa.create(spa_params)
    redirect_to '/'
  end


  private
  def spa_params
    params.require(:spa).permit(:name, :image, :detail, :facility, :business_hours, :access)
  end
end

