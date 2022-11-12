class UsersController < ApplicationController
    get '/users' do
        # get all the users from the database
        users = User.all.order(:created_at)
        # users = User.where.not(first: [nil, "Untitled"])
        # User.where(first: [values]).delete_all
        # User.where.not(first: 'Untiltled').where.not(first: 'nil')
        # users.where.not(first: nil)
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
     
      get "/users/:username" do
        user = User.find_by_username(params[:username])
        user.to_json(include: [:trips])
      end
      get "/users/:username" do
        user = User.find_by_username(params[:username])
          if user
            user.to_json(include: [:trips])
          else
            status 401
            { errors: "user doesn't exist" }.to_json
          end
      end
  
  
  end