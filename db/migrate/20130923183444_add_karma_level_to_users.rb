class AddKarmaLevelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :karma_level, :integer
  end
end
