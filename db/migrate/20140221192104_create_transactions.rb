class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :title
      t.string :description
      t.string :vendor
      t.string :category
      t.integer :amount
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
