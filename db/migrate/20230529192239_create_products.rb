class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :stock
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end