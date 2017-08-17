class CreateCruises < ActiveRecord::Migration[5.1]
  def change
    create_table :cruises do |t|
     
      t.string  :name , null: false
      t.integer :duration, null: false , default: 0 
      t.decimal :base_cost , default: 0.0 
      t.date    :dates , array: true, default: []
      t.belongs_to :ship, index: true, null: false
      t.timestamps
    end
     add_index :cruises, [:name , :ship_id], unique: true
     add_foreign_key :cruises, :ships
  end
end
