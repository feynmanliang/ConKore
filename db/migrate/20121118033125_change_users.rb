class ChangeUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_image, :string
    add_column :users, :biography, :string
    add_column :users, :board, :string
    add_column :users, :trucks, :string
    add_column :users, :bearings, :string
    add_column :users, :wheels, :string
  end
end
