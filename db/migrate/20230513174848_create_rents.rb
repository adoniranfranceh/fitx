class CreateRents < ActiveRecord::Migration[6.1]
  def change
    create_table :rents do |t|
      t.float :cost
      t.references :customer

      t.timestamps
    end
  end
end
