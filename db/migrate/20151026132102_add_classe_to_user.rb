class AddClasseToUser < ActiveRecord::Migration
  def change
  	add_reference :users, :classe, index: true 	
  end
end
