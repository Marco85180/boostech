class ProposalsController < ApplicationController

  before_action :authenticate_user!

  def create
    current_user.proposals.create
  end

  private


end
