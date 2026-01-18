# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Story.create(title: "Die Kat", content: "Dit is ’n kat.
Die kat is klein.
Die kat sien ’n bal.
Die kat speel met die bal.
Die kat is bly.")

Story.create(title: "Die Hond", content: "Dit is ’n hond.
Die hond is groot.
Die hond sien ’n man.
Die hond hardloop.
Die hond is bly.")

Story.create(title: "Die Son", content: "Die son is warm.
Die son is hoog.
Ek sien die son.
Ek loop buite.
Ek is bly.")
