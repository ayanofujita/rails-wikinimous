# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleaning db..."
Article.destroy_all

puts "generating articles..."

10.times do
  # content = Faker::Lorem.paragraph
  # content += "\n #{Faker::Space.star}"
  # content += "\n #{Faker::Lorem.paragraph_by_chars(number: rand(70..256))}"
  # content += "\n #{Faker::Lorem.paragraph_by_chars(number: rand(70..256))}"
  # content += "\n #{Faker::Lorem.paragraph_by_chars(number: rand(70..256))}"
  # content += "\n #{Faker::Space.company}"
  # content += "\n #{Faker::Lorem.paragraph(sentence_count: 3)}"
  # content += "\n #{Faker::Music::RockBand.name}"
  # content += "\n #{Faker::Lorem.paragraph_by_chars(number: rand(70..256))}"
  # content += "\n #{Faker::Lorem.paragraph_by_chars(number: rand(70..256))}"
  # content += "\n #{Faker::Lorem.paragraph_by_chars(number: rand(70..256))}"

  content = "<p>#{Faker::Lorem.paragraph}</p>
<h2>#{Faker::Space.star}</h2>
<p>#{Faker::Lorem.paragraph_by_chars(number: rand(70..256))}</p>
<p>#{Faker::Lorem.paragraph_by_chars(number: rand(70..256))}</p>
<p>#{Faker::Lorem.paragraph_by_chars(number: rand(70..256))}</p>
<h2>#{Faker::Space.company}</h2>
<p>
  #{Faker::Lorem.paragraph(sentence_count: 3)}
  <a href="">#{Faker::Music::RockBand.name}</a>
  #{Faker::Lorem.paragraph_by_chars(number: rand(70..256))}
</p>
<p>#{Faker::Lorem.paragraph_by_chars(number: rand(70..256))}</p>
<p>#{Faker::Lorem.paragraph_by_chars(number: rand(70..256))}</p>"

  Article.create!(title: Faker::Space.agency, content: content)
end

puts "Created #{Article.count} articles!"
