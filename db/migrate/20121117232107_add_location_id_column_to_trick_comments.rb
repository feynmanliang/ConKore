class AddLocationIdColumnToTrickComments < ActiveRecord::Migration
  def change
    add_column :trick_comments, :location_id, :integer
  end
end
