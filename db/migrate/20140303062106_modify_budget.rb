class ModifyBudget < ActiveRecord::Migration
  def change
  	remove_column :budgets, :category, :string
  	remove_column :budgets, :amount, :integer
  	add_column :budgets, :total, :integer
  	add_column :budgets, :retirement, :decimal
  	add_column :budgets, :savings, :decimal
  	add_column :budgets, :loans, :decimal
  	add_column :budgets, :rent, :decimal
  	add_column :budgets, :utilities, :decimal
  	add_column :budgets, :cable, :decimal
  	add_column :budgets, :phone, :decimal
  	add_column :budgets, :cleaning, :decimal
  	add_column :budgets, :groceries, :decimal
  	add_column :budgets, :dining, :decimal
  	add_column :budgets, :entertainment, :decimal
  	add_column :budgets, :transportation, :decimal
  	add_column :budgets, :clothes, :decimal
  	add_column :budgets, :misc, :decimal
  end
end
