class AddDefaultsToPlayerStats < ActiveRecord::Migration[5.1]
  def change
    change_column :players, :points, :integer, default: 0
    change_column :players, :hidden_immunities, :integer, default: 0
    change_column :players, :individual_immunities, :integer, default: 0
    change_column :players, :tribal_immunities, :integer, default: 0
    change_column :players, :rewards, :integer, default: 0
    change_column :players, :days, :integer, default: 0
    change_column :players, :hidden_immunity_successes, :integer, default: 0
  end
end
