class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :code
      t.string :description
      t.string :length

      t.timestamps
    end
  end
end
