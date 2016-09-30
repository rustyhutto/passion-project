# new page for creating a user
get '/users/new' do
  # p session[:user_id]
  # p "$" * 100
  # p current_user
  erb :'/users/new'
end

# create a new user
post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    p session
    p '*' * 150
    p session[:user]
    redirect "/users/#{@user.id}"
  else
    @errors = ["Username or Email already exists"]
    erb :'users/new'
  end
end

# show the signed in user
get '/users/:id' do
  @user = User.find(params[:id])
  redirect '/sessions/new' unless current_user
  redirect '/' unless logged_in?
  erb :'/users/show'
end

# get to the page to edit user information
get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'/users/edit'
end

# edit a user's information
put '/users/:id' do
  # update user information using update method
  @user = User.find(params[:id])
  if params[:password] == ""
    @user.update(username: params[:username], email: params[:email], password_hash: @user.password_hash)
  else
    @user.update(username: params[:username], email: params[:email], password: params[:password])
  end
  redirect "/users/#{@user.id}"
end

# delete a user
delete '/users/:id' do
  # delete a user using the delete method
end
