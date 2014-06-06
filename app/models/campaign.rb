class Campaign < ActiveRecord::Base
  belongs_to :company
  has_many :proposals
  acts_as_commentable

  def sum_proposals
    @sum_proposals ||= proposals.reduce(0) { |sum, proposal| proposal.amount + sum }
  end

  def funding_percentage
    @funding_percentage ||= sum_proposals.fdiv(amount) * 100
  end
end
