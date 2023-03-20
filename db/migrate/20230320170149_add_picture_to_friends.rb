class AddPictureToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :picture, :string
  end
end
