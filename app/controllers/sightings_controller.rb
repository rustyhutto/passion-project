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

get '/sightings/:id/edit' do
  @sighting = Sighting.find(params[:id])
  erb :'/sightings/edit'
end

put '/sightings/:id' do

end

delete '/sightings/:id' do

end
