# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

Friend.destroy_all

puts "Creating 20 friends ..."
20.times do
  friend = Friend.new(
    name: Faker::Name.name,
    date: Faker::Date.birthday(min_age: 18, max_age: 65),
    price: Faker::Number.between(from: 100, to: 1000),
    genre: Faker::Gender.type,
    address: Faker::Address.full_address,
    picture: Faker:: ,
    activity_wedding: [true, false].sample,
    activity_sam: [true, false].sample,
    activity_diner: [true, false].sample,
    activity_birthday: [true, false].sample,
    activity_bowling: [true, false].sample,
    activity_hike: [true, false].sample,
    activity_movie: [true, false].sample,
    activity_picnic: [true, false].sample,
    activity_concert: [true, false].sample,
    activity_karaoke: [true, false].sample,
    activity_shopping: [true, false].sample,
    activity_sport: [true, false].sample,
    activity_barbecue: [true, false].sample,
    activity_camping: [true, false].sample,
    activity_paintball: [true, false].sample,
    default_complotist: [true, false].sample,
    default_impatient: [true, false].sample,
    default_disorganized: [true, false].sample,
    default_cheap: [true, false].sample,
    default_arrogant: [true, false].sample,
    quality_funny: [true, false].sample,
    quality_reliable: [true, false].sample,
    quality_honest: [true, false].sample,
    quality_good_looking: [true, false].sample,
    quality_brave: [true, false].sample
  )
  friend.save!
end
puts " Finished!"
