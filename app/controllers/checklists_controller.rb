get '/checklists/new' do
  if request.xhr?
    erb :'/partials/_new_checklist', layout: false
  else
    erb :'/checklists/new'
  end
end

post '/checklists' do
  @user = current_user
  @checklist = @user.checklists.build(params[:checklist])
  if @checklist.save
    redirect "/checklists/#{@checklist.id}"
  else
    @errors = ["One or more fields are invalid"]
    erb :'checklists/new'
  end
end

get '/checklists/:id' do
  @checklist = Checklist.find(params[:id])
  @sightings = @checklist.sightings.all

  erb :'/checklists/show'
end

get '/checklists/:id/edit' do
  @checklist = Checklist.find(params[:id])
  erb :'checklists/edit'
end

put '/checklists/:id' do
  @checklist = Checklist.find(params[:id])
  @checklist.update(params[:checklist])
  redirect "/checklists/#{@checklist.id}"
end

delete '/checklists/:id' do
  @checklist = Checklist.find(params[:id])
  @checklist.destroy
  redirect "/users/#{@checklist.user_id}"
end
