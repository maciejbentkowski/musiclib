# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


5.times do |i|
  Artist.create(alias:"Sample Alias #{i}", first_name: "Sample name #{i}", last_name:"Sample #{i}", birth_date: "1991-05-03", death_date: Date.today)
end
puts("Artists Initialized")
