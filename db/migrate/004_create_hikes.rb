class CreateHikes < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.time :duration
      t.date :date_hiked
      t.integer :user_id
      t.integer :trail_id

      t.timestamps
    end
  end
end
