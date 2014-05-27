class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @companie = Company.find(params[:id])
  end
end
