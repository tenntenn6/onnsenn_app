class CompaniesController < ApplicationController
  def show
    @company_name = current_company.company_name
    @spas = current_company.spas
  end
  
end
