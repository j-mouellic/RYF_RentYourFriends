# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Friend.destroy_all

50.times do
  friend = {
    name: "test without faker",
    date_of_birth: "none",
    price: 500,
    genre: "man",
    address: "none given",
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
    quality_brave: [true, false].sample,
    picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdl9n0RSdIXzmYihJTNdVD8xY_m6bBRB1HOAZpIa0&s"
  }
  new_friend = Friend.new(friend)
  new_friend.save!
end
