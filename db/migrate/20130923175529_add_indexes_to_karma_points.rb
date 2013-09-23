class AddIndexesToKarmaPoints < ActiveRecord::Migration
  def change
    add_index :karma_points, :id
    add_index :karma_points, :user_id
    add_index :karma_points, :value
    add_index :karma_points, [:user_id, :value]
  end
end
