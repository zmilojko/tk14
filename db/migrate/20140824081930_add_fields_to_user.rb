class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :display_name, :string
    add_column :users, :full_name, :string
    add_column :users, :profile, :string
    add_column :users, :pictures, :string
    add_column :users, :is_racer, :boolean, default: true
    add_column :users, :nationality, :string
  end
end
