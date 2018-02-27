class CreateBackers < ActiveRecord::Migration[5.1]
  def change
    create_table :backers do |t|
      t.string :name
      t.integer :total_wallet

      t.timestamps
    end
  end
end
