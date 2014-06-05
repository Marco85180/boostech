class CampaignsController < ApplicationController

  before_action :set_campaign, only: [:show, :sum_proposal]

  def sum_proposal
    sum = 0
    @campaign.proposals.each do |proposal|
      sum =+ proposal.amount.to_i
    end
    sum
    @pourcentage = sum / @campaign.amount * 100,0
  end

  def show
    @comments = @campaign.comments
    @proposals = @campaign.proposals
  end

  private
  def set_campaign
    @campaign = Campaign.find(params[:id])
  end
end
