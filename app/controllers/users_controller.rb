class UsersController < ApplicationController
  post '/users/login' do 
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       redirect "/users/#{@user.id}"
    else
       flash[:error] = "No account associated with those credentials please try      again."
       redirect '/users/login'
    end
    end
  
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