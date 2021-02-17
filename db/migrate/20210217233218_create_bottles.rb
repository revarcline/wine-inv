class CreateBottles < ActiveRecord::Migration[6.1]
  def change
    create_table :bottles do |t|
      t.string :name
      t.string :bin
      t.integer :vintage
      t.integer :quantity
      t.integer :producer_id
      t.integer :appellation_id

      t.timestamps
    end
  end
end
