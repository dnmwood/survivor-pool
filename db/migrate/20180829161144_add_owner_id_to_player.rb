class AddOwnerIdToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :player_owner_id, :integer
  end
end
