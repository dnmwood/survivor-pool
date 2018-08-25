class CreateOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.integer :total_points
      t.integer :hidden_idols
      t.integer :successful_immunities
      t.integer :individual_immunities
      t.integer :tribal_immunities
      t.integer :rewards
      t.integer :days
      t.integer :jury_members
      t.integer :winners
      t.integer :second_placers
      t.integer :third_placers
      t.integer :quitters
      t.integer :med_evacs
      t.integer :season_favourites
      t.integer :season_victories

      t.timestamps
    end
  end
end
