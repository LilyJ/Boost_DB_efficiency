class AddIndexToUsersForKarmaLevel < ActiveRecord::Migration
  def change
    add_index :users, :karma_level
  end
end
