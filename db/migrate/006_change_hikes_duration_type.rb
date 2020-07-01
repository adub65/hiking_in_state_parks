class ChangeHikesDurationType < ActiveRecord::Migration[6.0]
  def change
    change_column :hikes, :duration, :integer
  end
end