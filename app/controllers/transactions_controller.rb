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
	trans.user_id=params["user"]
	trans.save
	redirect_to "/"

end

def destroy
	trans = Transaction.find_by(:id => params[:trans_id])
	trans.destroy
	redirect_to root_url, notice: "Transaction Deleted"
end

end
