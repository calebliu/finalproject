class Updatebudgets < ActiveRecord::Migration
  def change
  remove_column :budgets, :retirement, :decimal
  remove_column :budgets, :savings, :decimal
  remove_column :budgets, :loans, :decimal
  remove_column :budgets, :rent, :decimal
  remove_column :budgets, :utilities, :decimal
  remove_column :budgets, :cable, :decimal
  remove_column :budgets, :phone, :decimal
  remove_column :budgets, :cleaning, :decimal
  remove_column :budgets, :groceries, :decimal
  remove_column :budgets, :dining, :decimal
  remove_column :budgets, :entertainment, :decimal
  remove_column :budgets, :transportation, :decimal
  remove_column :budgets, :clothes, :decimal
  remove_column :budgets, :misc, :decimal
  add_column :budgets, :category_id, :integer
  end
end
