class CreateRents < ActiveRecord::Migration[6.1]
  def change
    create_table :rents do |t|
      t.float :cost
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
