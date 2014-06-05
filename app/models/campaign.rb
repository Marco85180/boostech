class Campaign < ActiveRecord::Base
  belongs_to :company
  has_many :proposals
  acts_as_commentable
end
