class AddProfilePictureToPoems < ActiveRecord::Migration[5.0]
  def change
    add_column :poems, :profile_picture, :string
  end
end
