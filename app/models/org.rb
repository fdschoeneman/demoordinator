class Org < ActiveRecord::Base

  has_many :orgs_users
  has_many :users, through: :orgs_users
end
