class CreateLocationComments < ActiveRecord::Migration
  def change
    create_table :location_comments do |t|
      t.string :body
      t.integer :rating

      t.timestamps
    end
  end
end
