class AddLoginToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :login, :string
  	add_column :users, :pwd, :string
  end
end
