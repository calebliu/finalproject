require 'URI'
require 'open-uri'

class StocksController < ApplicationController

	def search


		

		@ticker=params[:ticker]
		@url = URI.encode("http://query.yahooapis.com/v1/public/yql?q=select * from yahoo.finance.quotes where symbol in ('#{@ticker}')&format=json&diagnostics=true&env=http://datatables.org/alltables.env")
		@json_data = open(@url).read
		@data=JSON.parse(@json_data)
		@ask=@data["query"]["results"]["quote"]["Ask"]
		@bid=@data["query"]["results"]["quote"]["Bid"]
		@quote=@data["query"]["results"]["quote"]

		#CGI.escape("http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(%22#{@ticker}%22)%0A%09%09&env=http%3A%2F%2Fdatatables.org%2Falltables.env&format=json")
		# @json_data = open(@url).read
		# @data = JSON.parse(@json_data)
		# @bid = @data["bid"]



	end
end
