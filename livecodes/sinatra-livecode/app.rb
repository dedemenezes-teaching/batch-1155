require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# GET IS THE HTTP VERB


get "/" do
  # 1. RETRIVE ALL RESTAURANTS
  @restaurants = Restaurant.all
  # 2. ASK VIEW TO DISPLAY IT
  erb :index
end

get '/:id' do
  # 1. Retrieve the right restaurant
  # we do need to use this id to retrive the restaurant

  @restaurant = Restaurant.find(params['id'])
  # CREATE THE VIEW
  erb :show
end
