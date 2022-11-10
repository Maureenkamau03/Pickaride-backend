class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/cars' do
    car = Car.all
    car.to_json
  end
  get '/cars' do
end