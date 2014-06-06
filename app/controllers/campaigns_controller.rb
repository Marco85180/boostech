class CampaignsController < ApplicationController

  before_action :set_campaign, only: [:show]

  def show
    @comments = @campaign.comments
    @proposals = @campaign.proposals
  end

  private

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end
end
