class CreateMotorcycles < ActiveRecord::Migration[7.0]
  def change
    create_table :motorcycles do |t|
      t.integer :articleID
      t.string :brand
      t.string :model
      t.date :year
      t.text :image
      t.integer :rental_price

      t.timestamps
    end
  end
end