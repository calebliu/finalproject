Transaction.destroy_all
puts "There are now #{Transaction.count} transactions in the db"

Category.destroy_all

["retirement", "savings", "loans", "rent", "utilities","cable","phone","cleaning","groceries","dining","entertainment","transportation","clothes","misc"].each do |category_name|
        c = Category.new
        c.name = category_name
        c.save
end

puts "There are now #{Category.count} categories in the db"

Budget.destroy_all

User.destroy_all

user = User.new
user.first_name = "John"
user.last_name = "Doe"
user.income = 100000
user.net_worth = 1000000
user.have_goals=1
user.have_budget=1
user.login="johndoe"
user.pwd="password"
user.save

puts "All users have been purged. Use user:#{user.login} and password:#{user.pwd} to test functionality"

