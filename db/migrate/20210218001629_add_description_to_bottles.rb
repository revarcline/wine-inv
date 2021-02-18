class AddDescriptionToBottles < ActiveRecord::Migration[6.1]
  def change
    add_column :bottles, :desc, :text
  end
end
