class OrgsUser < ActiveRecord::Base

  belongs_to :user
  belongs_to :org
end
