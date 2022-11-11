class UsersController < ApplicationController
    get '/users' do
        # get all the employees from the database
        users = User.all.order(:created_at)
        # employees = Employee.where.not(first: [nil, "Untitled"])
        # Employee.where(first: [values]).delete_all
        # Employee.where.not(first: 'Untiltled').where.not(first: 'nil')
        # employees.where.not(first: nil)
        # send them back as a JSON array
        users.to_json
      end
      
    post '/users' do
        users = User.create(first: params[:first],  
          last: params[:last], 
          email: params[:email], 
          location: params[:location],
          licence: params[:licence],
          password: params[:password])
        users.to_json
      end
    
  
  
  end