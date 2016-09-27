get '/checklists/:checklist_id/sightings/new' do
  @checklist = Checklist.find(params[:checklist_id])
  erb :'/sightings/new'
end

post '/checklists/:checklist_id/sightings' do
  @checklist = Checklist.find(params[:checklist_id])
  @sighting = @checklist.sightings.build(params[:sighting])
  if @checklist.save
    redirect "/checklists/#{@checklist.id}"
  else
    @errors = ["One or more fields are invalid"]
    erb :'sightings/new'
  end
end

get '/checklists/:checklist_id/sightings/:id' do
  @checklist = Checklist.find(params[:checklist_id])
  @sighting = Sighting.find(params[:id])
  erb :'/sightings/show'
end

get '/checklists/:checklist_id/sightings/:id/edit' do
  @checklist = Checklist.find(params[:checklist_id])
  @sighting = Sighting.find(params[:id])
  erb :'/sightings/edit'
end

put '/checklists/:checklist_id/sightings/:id' do
  @checklist = Checklist.find(params[:checklist_id])
  @sighting = Sighting.find(params[:id])
  @sighting.update(params[:sighting])
  redirect "/checklists/#{@checklist.id}"
end

delete '/checklists/:checklist_id/sightings/:id' do
  @checklist = Checklist.find(params[:checklist_id])
  @sighting = Sighting.find(params[:id])
  @sighting.destroy
  redirect "/checklists/#{@checklist.id}"
end
