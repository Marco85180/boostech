class Campaign < ActiveRecord::Base
  belongs_to :company
  acts_as_commentable
end
