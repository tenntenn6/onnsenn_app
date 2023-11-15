class SpasController < ApplicationController
  before_action :set_spa, only: [:edit, :show, :update, :destroy]
  
  def index
    @spas = Spa.includes(:company).order('created_at DESC')
  end

  def new
    @spa = Spa.new
  end

  def show
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
    @spa.destroy
    redirect_to company_path(@spa.company.id)
  end

  def edit
  end

  def update
    if @spa.update(spa_params)
     redirect_to company_path(@spa.company.id)
    else
     render :edit, status: :unprocessable_entity
    end
  end

  private
  def spa_params
    params.require(:spa).permit(:name, :image, :detail, :facility, :business_hours, :access).merge(company_id: current_company.id)
  end

  def set_spa
    @spa = Spa.find(params[:id])
  end


end

