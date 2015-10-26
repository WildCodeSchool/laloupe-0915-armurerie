class CreateEquipClasses < ActiveRecord::Migration
  def change
    create_table :equip_classes do |t|
    	t.references :equipement, index: true
    	t.references :classe, index: true
      t.timestamps null: false
    end
  end
end
