class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.date :date_of_birth
      t.integer :price
      t.string :genre
      t.string :address
      t.boolean :activity_wedding
      t.boolean :activity_sam
      t.boolean :activity_diner
      t.boolean :activity_birthday
      t.boolean :activity_bowling
      t.boolean :activity_hike
      t.boolean :activity_movie
      t.boolean :activity_picnic
      t.boolean :activity_concert
      t.boolean :activity_karaoke
      t.boolean :activity_shopping
      t.boolean :activity_sport
      t.boolean :activity_barbecue
      t.boolean :activity_camping
      t.boolean :activity_paintball
      t.boolean :default_complotist
      t.boolean :default_impatient
      t.boolean :default_disorganized
      t.boolean :default_cheap
      t.boolean :default_arrogant
      t.boolean :quality_funny
      t.boolean :quality_reliable
      t.boolean :quality_honest
      t.boolean :quality_good_looking
      t.boolean :quality_brave
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
