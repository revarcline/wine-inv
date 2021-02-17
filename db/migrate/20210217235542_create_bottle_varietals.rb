class CreateBottleVarietals < ActiveRecord::Migration[6.1]
  def change
    create_table :bottle_varietals do |t|
      t.integer :bottle_id
      t.integer :varietal_id

      t.timestamps
    end
  end
end
