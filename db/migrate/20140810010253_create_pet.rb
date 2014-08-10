class CreatePet < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.integer :age
      t.timestamps
    end
  end
end
