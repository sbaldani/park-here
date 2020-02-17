class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :registration_plate
      t.string :type_of_car
      t.string :model
      t.integer :year
      t.string :color
      t.string :brand
      t.reference :user

      t.timestamps
    end
  end
end
