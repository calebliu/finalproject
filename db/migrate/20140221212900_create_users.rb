class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :income
      t.integer :net_worth
      t.boolean :have_goals
      t.boolean :have_budget

      t.timestamps
    end
  end
end
