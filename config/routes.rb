Finalproject::Application.routes.draw do

#Login routes
get "/login" => "session#new"
get "/authenticate" => "session#create"
get "/logout" => "session#destroy"

get "/" => "accounts#overview"

root "accounts#overview"


#Account routes
get "/Dashboard" => "accounts#overview"
get "/Transactions" => "accounts#transactions"
get "/Budget" => "accounts#budget"
get "/Goals" => "accounts#goals"
get "/Stocks" => "accounts#stocks"
  
#Stock route
get "/stocksearch" => "stocks#search"

#Vendor route
get "/Vendor" => "vendors#new"
get "/Vendor/Create" => "vendors#create"

#Transaction routes

#Create
get "/Transactions/New" => "transactions#new"
get "/Transactions/Create" => "transactions#create"

#Destroy
get "/transactions/:trans_id/delete" => "transactions#destroy"


get "/Budget/Create" => "accounts#budgetcreate"

#User routes
get "/users/new" => "users#new"
get "/users/create" => "users#create"
get "/users/show" => "users#show"

end