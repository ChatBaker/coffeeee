# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CSV.foreach("test.csv") do |csv|
   next if csv[0] == "id"

    Bean.create!(name: csv[1], taste: csv[2], acidity: csv[3].to_i, sweetness: csv[4].to_i, bitter: csv[5].to_i, richness: csv[6].to_i, aroma: csv[7].to_i, place: csv[8], feature: csv[9], geography_history: csv[10])
   end
