class TransactionsController < ApplicationController

def new
end

def create
	trans=Transaction.new
	trans.title=params["title"]
	trans.description=params["description"]
	trans.vendor=params["vendor"]
	trans.category=params["category"]
	trans.amount=params["price"]
	trans.date=params["date"]
	trans.save
	redirect_to "/Transactions"

end

end
