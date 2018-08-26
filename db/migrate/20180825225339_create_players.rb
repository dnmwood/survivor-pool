class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :description
      t.integer :points
      t.integer :hidden_immunities
      t.integer :individual_immunities
      t.integer :tribal_immunities
      t.boolean :jury_member
      t.boolean :winner
      t.boolean :second_place
      t.boolean :third_place
      t.integer :days
      t.integer :hidden_immunity_successes
      t.boolean :quitter
      t.boolean :medical_evac
      t.boolean :season_favourite
      t.integer :rewards

      t.timestamps
    end
  end
end
