require 'rubygems'
require 'bundler/setup'
require 'twitter'

module UserComparer
  class User
  	attr_reader :username 
  	def initialize(username)
  		@username = username
  	end

  	def followers
  		client = Twitter::REST::Client.new do |config|
  		  config.consumer_key        = ENV['CONSUMER_KEY']
  		  config.consumer_secret     = ENV['CONSUMER_SECRET']
  		  config.access_token         = ENV['OAUTH_TOKEN']
  		  config.access_token_secret  = ENV['OAUTH_TOKEN_SECRET']
  		end

  		  client.user(@username).followers_count
  		end
  	end
  end

  class Comparer
  	def initialize(user1, user2)
  		@user1 = user1
  		@user2 = user2
  	end

  	def compare
  	end
  end
end

