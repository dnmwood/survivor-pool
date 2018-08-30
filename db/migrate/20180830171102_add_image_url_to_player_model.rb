class AddImageUrlToPlayerModel < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :player_image_url, :string
  end
end
