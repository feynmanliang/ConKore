class AddUserIdColumnToLocationComments < ActiveRecord::Migration
  def change
    add_column :location_comments, :user_id, :integer
  end
end
