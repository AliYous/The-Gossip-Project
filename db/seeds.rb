
require 'faker'
Faker::Config.locale = 'fr'
# City.delete_all
# User.delete_all
# Gossip.delete_all

10.times do 
  city = City.create!(name: Faker::Address.city)
  u = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, city_id: city.id)
  g = Gossip.create!(title: "Test", content: Faker::Quote.famous_last_words, user_id: u.id)
end
