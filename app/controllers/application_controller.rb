require "sinatra"
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/cars' do
    car = Car.all
    car.to_json
  end
  get '/cars/:car_description' do
    car = Car.find_by(params[:car_description])
    car.to_json
  end
  get 'cars/:id' do
    car = Car.find(params[:id])
  end
  post 'rentals/' do
    rentals = Rental.create(car_description: params[:first], 
      registration_no: params[:registration_no],
      pickup_date: params[:'pick_up'])
    end
end

# employees = Employee.create(first: params[:first],  
#   last: params[:last], 
#   email: params[:email], 
#   work_station: params[:work_station],
#   phone: params[:phone],
#   hobby: params[:hobby])
# employees.to_json