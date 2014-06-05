class ProposalsController < ApplicationController

  before_action :authenticate_user!

  def create
    current_user.proposals.create!(proposal_params)
    redirect_to params[:proposal][:return_to]
  end

  private
  def proposal_params
    params.require(:proposal).permit(:amount, :rate, :proposal)
  end

end