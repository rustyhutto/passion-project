require 'faker'

10.times do |x|
  username = Faker::Name.name
  email = Faker::Internet.email
  password = 'password'
end
