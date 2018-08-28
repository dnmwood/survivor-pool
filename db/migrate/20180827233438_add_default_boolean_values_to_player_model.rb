class AddDefaultBooleanValuesToPlayerModel < ActiveRecord::Migration[5.1]
  def change
    change_column :players, :active, :boolean, default: true
    change_column :players, :winner, :boolean, default: false
    change_column :players, :second_place, :boolean, default: false
    change_column :players, :third_place, :boolean, default: false
    change_column :players, :quitter, :boolean, default: false
    change_column :players, :medical_evac, :boolean, default: false
    change_column :players, :season_favourite, :boolean, default: false
    change_column :players, :jury_member, :boolean, default: false
  end
end
