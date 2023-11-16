class CompaniesController < ApplicationController
  before_action :set_roguouto


  def show
    @company_name = current_company.company_name
    @spas = current_company.spas
  end
  
  private
  def set_roguouto
    unless company_signed_in? && current_company.id
      redirect_to new_company_session_path
    end
  end
end
