class UsersController < ApplicationController
  get '/users/:id' do
    user = User.find_by_id(params[:id])
    user.to_json
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


     #sets up the route for performing a get request for the username
      get "/users/:username" do
        user = User.find_by_username(params[:username])
        user.to_json
      end
      get "/users/:username" do
        user = User.find_by_username(params[:username])
          if user
            user.to_json
          else
            status 401
            { errors: "user doesn't exist" }.to_json
          end
      end
  
  
  end