class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title
      t.string :description
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :long, precision: 10, scale: 6

      t.timestamps
    end
  end
end
