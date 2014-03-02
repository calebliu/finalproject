Transaction.destroy_all
puts "There are now #{Transaction.count} transactions in the db"

Budget.destroy_all
budget_default = [  { :user_id => 1,
                      :category => '401K',
                      :amount => 1000 
                    },
                    { :user_id => 1,
                      :category => 'Savings',
                      :amount => 1000 
                    },
                    { :user_id => 1,
                      :category => 'Loans',
                      :amount => 500 
                    },
                    { :user_id => 1,
                      :category => 'Rent',
                      :amount => 2500 
                    },
                    { :user_id => 1,
                      :category => 'Utilties',
                      :amount => 150 
                    },
                    { :user_id => 1,
                      :category => 'Cable',
                      :amount => 100 
                    },
                    { :user_id => 1,
                      :category => 'Phone',
                      :amount => 100 
                    },
                    { :user_id => 1,
                      :category => 'Maid',
                      :amount => 100 
                    },
                    { :user_id => 1,
                      :category => 'Groceries',
                      :amount => 400 
                    },
                    { :user_id => 1,
                      :category => 'Dining',
                      :amount => 400 
                    },
                    { :user_id => 1,
                      :category => 'Entertainment',
                      :amount => 400 
                    },
                    { :user_id => 1,
                      :category => 'Transportation',
                      :amount => 100 
                    },
                    { :user_id => 1,
                      :category => 'Misc',
                      :amount => 300 
                    },

                  ]

budget_default.each do |budget|
	b = Budget.new
	b.user_id = budget[:user_id]
	b.category = budget[:category]
	b.amount = budget[:amount]
	b.save
end

puts "There are now #{Budget.count} budget items"