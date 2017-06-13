class CompaniesController < ApplicationController
  def index
    render json: Company.all
  end
  
  def create
    company = Company.new(company_params)
    company.save
    render json: company
  end
  
  private
  def company_params
    params.permit(:name)
  end
end
