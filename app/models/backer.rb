class Backer < ApplicationRecord
  has_many :project_backers
  has_many :projects, through: :project_backers

  def make_contribution(project, params)
    projectbacker = ProjectBacker.create(project_id: project.id, backer_id: self.id, contributed_amount: params[:project][:contributions].to_i)
    project.update(contributions: (project.contributions.to_i + params[:project][:contributions].to_i))
    self.update(total_wallet: (self.total_wallet.to_i - params[:project][:contributions].to_i))
  end

end
