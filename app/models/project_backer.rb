class ProjectBacker < ApplicationRecord
  belongs_to :backer
  belongs_to :project
end
