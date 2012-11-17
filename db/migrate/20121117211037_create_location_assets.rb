class CreateLocationAssets < ActiveRecord::Migration
  def change
    create_table :location_assets do |t|
      t.integer :location_id

      t.timestamps
    end
  end
end
