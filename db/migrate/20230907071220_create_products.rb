class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :type
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
