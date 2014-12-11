class AddIndexToUsersTeamname < ActiveRecord::Migration
  def change
  	add_index :users, :teamName, unique: true
  end
end
