require "sinatra"
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  
  get '/cars/:car_description' do
    car = Car.find_by(params[:car_description])
    car.to_json
  end
  # before do
  #   content_type :json
  #   response.headers["Access-Control-Allow-Origin"] ="*"
  # end
  before do
    content_type :json
    headers 'Access-Control-Allow-Origin' => '*'
  end

  options "*" do
    response.headers["Access-Control-Allow-Methods"] = "GET, POST, UPDATE, DELETE"
  end
  

  get '/users' do
    user = User.all
    user.to_json
  end

  get '/users/:username' do
    user = User.find_by(params[:username])
    User.to_json
  end

  get '/users/:email' do
    user = User.find_by(params[:email])
    User.to_json
  end
  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end
  delete "/users/:id" do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end
  
end