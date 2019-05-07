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


end
