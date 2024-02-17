# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

# Create fake artworks
200.times do
  Artwork.create(
    title: Faker::Book.title,
    classification: Faker::Lorem.word,
    begin_year: Faker::Number.between(from: 1000, to: 2000),
    end_year: Faker::Number.between(from: 1000, to: 2000),
    medium: Faker::Lorem.word,
    provenance_text: Faker::Lorem.paragraph,
    attribution: Faker::Name.name,
    credit_line: Faker::Lorem.sentence
  )
end