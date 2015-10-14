class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|

    	t.string :name, null: false
    	t.string :item, null: false
    	t.string :location, null: false
    	t.string :material, null: false
      t.integer :level, default: 1, null: false
      t.integer :price, default: 0, null: false
      t.string :bonus

      t.timestamps null: false

    end
  end
end
