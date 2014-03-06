class VendorsController < ApplicationController

def new
	
end

def create

v=Vendor.new
v.name=params[:vendor]
v.save
redirect_to "/Transactions/New"

end

end
