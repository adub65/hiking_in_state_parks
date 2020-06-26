class CreateStateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :state_parks do |t|
      t.string :name
      t.string :address
      t.string :county

      t.timestamps
    end
  end
end
