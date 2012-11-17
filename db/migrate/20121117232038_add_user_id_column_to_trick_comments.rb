class AddUserIdColumnToTrickComments < ActiveRecord::Migration
  def change
    add_column :trick_comments, :user_id, :integer
  end
end
