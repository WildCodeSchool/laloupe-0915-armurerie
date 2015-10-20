class CreateBaskets < ActiveRecord::Migration
  def change
    create_table :baskets do |t|
    	t.references :user, index: true
    	t.boolean :paid, default: false

      t.timestamps null: false
    end
  end
end
