class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # get '/cars' do
  #   car = Car.all
  #   car.to_json
  # end
  # get '/cars/:car_description' do
  #   car = Car.find_by(params[:car_description])
  #   car.to_json
  # end
end