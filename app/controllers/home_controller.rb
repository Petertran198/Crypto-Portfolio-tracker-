class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    # Get the uri 
    @response = Net::HTTP.get(@uri)
    #parse the json
    @coins = JSON.parse(@response)
    @my_coins = ["BTC","XRP","ADA","XLM","STEEM"]
  end

  def about
  end

  def lookup
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    # Get the uri 
    @response = Net::HTTP.get(@uri)
    #parse the json
    @lookup_coin = JSON.parse(@response) 
    

    @symbol = params[:sym];
    #If it exist
    if @symbol
      @symbol = @symbol.upcase

    end
    # If @symbol = nothing
    if @symbol == ""
      @symbol = "Hey you forgot to enter a currency"
    end

  end

end
