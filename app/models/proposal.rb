class Proposal < ActiveRecord::Base
  belongs_to :user
  belongs_to :campaign
  acts_as_commentable
end
