class HomeController < ApplicationController

  def index
    # If params[] exists execute if, otherwise end
      if params[:ticker] == ""
        @nothing = "Hey! You forgot to enter a symbol!"
      elsif params[:ticker]
        # Connect to https://iexcloud.io/ using personal API Key
        @api_key = StockQuote::Stock.new(api_key: 'pk_73f4f72a107e4a53832d03915b56d1cc')
        @stock = StockQuote::Stock.quote(params[:ticker])

        if !@stock
          @error = "Hey! That stock symbol doesn not exist. Please try again."
        end
      end
  end


  def about
  end


end
