class AddVideoLinkColumnToTricks < ActiveRecord::Migration
  def change
    add_column :tricks, :video_link, :string
  end
end
