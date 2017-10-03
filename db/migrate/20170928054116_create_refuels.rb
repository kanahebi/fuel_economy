class CreateRefuels < ActiveRecord::Migration[5.1]
  def change
    create_table :refuels do |t|
      t.float :gasoline
      t.float :distance
      t.integer :price
      t.datetime :refuel_date
      t.references :user

      t.timestamps
    end
  end
end
