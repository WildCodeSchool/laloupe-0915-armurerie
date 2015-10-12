class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname, null: false
      t.integer :level, default: 1
      t.integer :loot, default: 0

      t.timestamps null: false
    end
  end
end
