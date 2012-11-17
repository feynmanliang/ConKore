class AddTrickIdColumnToTrickComments < ActiveRecord::Migration
  def change
    add_column :trick_comments, :trick_id, :integer
  end
end
