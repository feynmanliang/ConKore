class CreateTrickComments < ActiveRecord::Migration
  def change
    create_table :trick_comments do |t|
      t.string :body
      t.integer :rating

      t.timestamps
    end
  end
end
