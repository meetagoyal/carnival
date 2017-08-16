class CreateCabins < ActiveRecord::Migration[5.1]
  def change
    create_table :cabins do |t|
      t.integer :level, null: false 
      t.string  :room , nul: false
      t.boolean :is_available , default: true 
      t.belongs_to :ship, index: true, null: false
      t.timestamps
    end
      add_index :cabins, [:level , :room , :ship_id], unique: true
      add_foreign_key :cabins, :ships
  end
end
