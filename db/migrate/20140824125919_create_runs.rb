class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.integer :race_id
      t.integer :user_id
      t.string :number
      t.string :times

      t.timestamps
    end
  end
end
