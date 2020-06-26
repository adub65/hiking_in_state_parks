class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.integer :distance
      t.string :difficulty
      t.string :trail_composition
      t.integer :state_park_id

      t.timestamps
    end
  end
end
