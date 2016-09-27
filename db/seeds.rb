require 'faker'

31.times do |x|
  username = Faker::Name.name
  email = Faker::Internet.email
  password = 'password'
  User.create(username: username, email: email, password: password)
end

User.all.each do |user|
  list_name = 'checklist'
  location = Faker::Address.city
  datetime = '2016-09-24T04:05:06+00:00'
  user.checklists.create(list_name: list_name, location: location, datetime: datetime)
end

Checklist.all.each do |checklist|
  species = Faker::Pokemon.name
  count = rand(1..3)
  distance = rand(1..200)
  observation_type = "v"
  location = Faker::Pokemon.location
  habitat = "Oak woodland"
  vegetation = "Valley Oak"

  20.times do |x|
    checklist.sightings.create(species: species, count: count, distance: distance, observation_type: observation_type, location: location, habitat: habitat, vegetation: vegetation, user_id: User.all.sample.id)
  end
end
