class RemoveIndexesFromKarmaPoints < ActiveRecord::Migration
  def change
    remove_index :karma_points, :id
    remove_index :karma_points, :user_id
    remove_index :karma_points, :value
    remove_index :karma_points, [:user_id, :value]
  end
end
