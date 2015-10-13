class CreateStuffs < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.integer :matiere
      t.string :emplacement
      t.integer :prix, null: false
      t.integer :niveau, null: false
      t.string :bonus

      t.timestamps null: false
    end
  end
end
