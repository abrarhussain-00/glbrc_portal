# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
App.create!([
  { name: "Google", description: "Search Engine", color: "red", default_status: true, link: "http://www.google.com" },
  { name: "Wisc", description: "UW homepage", color: "Blue", default_status: false, link: "http://www.wisc.edu" },
  { name: "GLBRC", description: "Great Lakes Bioenergy Research Center", color: "Yellow", default_status: true, link: "http://www.glbrc.org" },
  { name: "WEI", description: "Wisconsin Energy Institute", color: "Green", default_status: false, link: "https://energy.wisc.edu/" },
  { name: "Twitter", description: "Twitter", color: "Purple", default_status: false, link: "https://twitter.com/" }
])

%w[user1 user2 user3].each do |username|
  User.create!(login: username, email: "#{username}@example.com", password: 'glbrcpass')
end
