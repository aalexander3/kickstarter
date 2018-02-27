class Backer < ApplicationRecord
  has_many :project_backers
  has_many :projects, through: :project_backers

  def make_contribution(project)
    @project = project
    @project.update(contributions: (@project.contributions.to_i + params[:project][:contributions].to_i))
    @backer.update(total_wallet: (@backer.total_wallet.to_i - params[:project][:contributions].to_i))
  end

end
