class Updatetransactions < ActiveRecord::Migration
  def change
  		add_column :transactions, :vend_id, :integer
  		remove_column :transactions, :vendor, :string
  end
end
