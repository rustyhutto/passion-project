# new page for creating a user
get '/users/new' do

  erb :'/users/new'
end

# create a new user
post '/users' do

end

# show the signed in user
get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end

# get to the page to edit user information
get '/users/:id/edit' do

  erb :'/users/edit'
end

# edit a user's information
put '/users/:id' do
  # update user information using update method
end

# delete a user
delete '/users/:id' do
  # delete a user using the delete method
end
