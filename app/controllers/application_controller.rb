require "sinatra"
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

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

  get '/cars' do
    car = Car.all
    car.to_json
  end
  
  get '/cars/:car_description' do
    car = Car.find_by(params[:car_description])
    car.to_json
  end
  get '/cars/:id' do
    car = Car.find(params[:id])
    car.to_json
  end
  patch '/cars/:id' do

  end
  post '/rentals' do
    rentals = Rental.create(car_description: params[:car_description], 
      registration_no: params[:registration_no],
      name: params[:'name'], licence: params[:'licence'],phone_no: params[:'phone_no'])
    rentals.to_json
    end
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
