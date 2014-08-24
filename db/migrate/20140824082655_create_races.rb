class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.integer :category_id
      t.datetime :race_time
      t.string :name
      t.string :description
      t.string :intermediate_points
      t.string :race_secret
      t.string :status

      t.timestamps
    end
  end
end
