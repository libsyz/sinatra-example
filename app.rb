require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"



get "/" do
  "<h1> Hello world! </h1>"
end


get "/koalas/:koala_name" do
  @name = params['koala_name']
  erb :koala
end

get "/team" do
  # find a way to get all the team members from the DB
  @team_members = TeamMember.all
  # send them to the view that will display them
  erb :team
end

get "/restaurants/:restaurant_id" do
  @restaurant = Restaurant.find(params["restaurant_id"].to_i)
  erb :restaurant
end


get "/restaurants" do
  # find a way to get all the team members from the DB
  @restaurants = Restaurant.all
  # send them to the view that will display them
  erb :restaurants
end

# http://localhost:4567/restaurants/new?name=hello&address=world&rating=5

get "/create_restaurant" do
  Restaurant.create(
      name: params['name'],
      address: params['address'],
      rating: params['rating'].to_i
    )
  @restaurants = Restaurant.all
  erb :restaurants
end






