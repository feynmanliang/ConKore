class AddPictureColumnsToLocationAsset < ActiveRecord::Migration
  def self.up
    add_attachment :location_assets, :picture
  end

  def self.down
    remove_attachment :location_assets, :picture
  end
end
