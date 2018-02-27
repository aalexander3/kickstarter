class AddContributedAmountToProjectBackers < ActiveRecord::Migration[5.1]
  def change
    add_column :project_backers, :contributed_amount, :integer
  end
end
