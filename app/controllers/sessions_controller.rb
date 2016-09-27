get '/sessions/new' do
  if request.xhr?
    erb :'partials/_login', layout: false
  else
    erb :'/sessions/new'
  end
end

post '/sessions' do
  @user = User.find_by_email(params[:email])
  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ["Username or password did not match."]
    erb :'sessions/new'
  end
end

delete '/sessions' do
  log_out if logged_in?
  redirect '/'
end
