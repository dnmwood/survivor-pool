class AddPhotoUrlToOwner < ActiveRecord::Migration[5.1]
  def change
    add_column :owners, :image_url, :string
  end
end
