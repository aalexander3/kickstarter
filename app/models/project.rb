class Project < ApplicationRecord
  has_many :project_backers
  has_many :backers, through: :project_backers
end
