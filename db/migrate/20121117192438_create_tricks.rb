class CreateTricks < ActiveRecord::Migration
  def change
    create_table :tricks do |t|
      t.string :title
      t.string :description
      t.integer :location_id

      t.timestamps
    end
  end
end
