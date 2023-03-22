class AddDescriptionToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :description, :text
  end
end
