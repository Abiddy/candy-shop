class CreateShelves < ActiveRecord::Migration[6.1]
  def change
    create_table :shelves do |t|
      t.integer "shop_id", :null => false
      t.string "name"

      t.timestamps
    end
  end
end
