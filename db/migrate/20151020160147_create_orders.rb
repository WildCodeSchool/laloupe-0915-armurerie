class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.references :basket, index: true
    	t.references :equipment, index: true
    	t.integer :quantity, default: 1

      t.timestamps null: false
    end
  end
end
