class CreateTrickComments < ActiveRecord::Migration
  def change
    create_table :trick_comments do |t|
      t.integer :trick_id
      t.integer :user_id
      t.string :body
      t.integer :rating

      t.timestamps
    end
  end
end
