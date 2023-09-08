class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :name
      t.integer :ta_duty_id
      t.string :ta_duty_type

      t.timestamps
    end
  end
end
