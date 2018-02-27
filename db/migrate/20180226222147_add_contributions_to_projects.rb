class AddContributionsToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :contributions, :integer, default: 0
  end
end
