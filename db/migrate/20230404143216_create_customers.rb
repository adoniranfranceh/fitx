class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :document
      t.string :phone
      t.date :payment_at
      t.integer :age
      t.float :weigth
      t.integer :height

      t.timestamps
    end
  end
end
