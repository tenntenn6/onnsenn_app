class SpasController < ApplicationController
  
  def index
    @spas = Spa.includes(:company).order('created_at DESC')
  end

  def new
    @spa = Spa.new
  end

  def create
    @spa = Spa.new(spa_params)   
    
    if @spa.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @spa = Spa.find(params[:id])
    @spa.destroy
    redirect_to company_path(@spa.company.id)
  end

  def edit
    @spa = Spa.find(params[:id])
  end

  def update
  end

  private
  def spa_params
    params.require(:spa).permit(:name, :image, :detail, :facility, :business_hours, :access).merge(company_id: current_company.id)
  end


end

