class CompaniesController < ApplicationController
  # before_action :authenticate_user!

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
    @hash = Gmaps4rails.build_markers(@company) do |company, marker|
      marker.lat company.addresses.first.latitude
      marker.lng company.addresses.first.longitude
      marker.json({ title: company.name })
      marker.infowindow render_to_string(:partial => "/companies/map_box", locals: {company: company})
    end
  end


end
