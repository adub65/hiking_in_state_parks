class DropHikes < ActiveRecord::Migration[6.0]
  def change
    drop_table :hikes
  end
end
