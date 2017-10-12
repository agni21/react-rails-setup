class HomeController < ApplicationController
  def index
  	@quotes = Quote.all.reduce({}) do |hash, user|
  	  hash[user.id] = user.slice('text', 'author')
  	  hash
  	end
  end
end