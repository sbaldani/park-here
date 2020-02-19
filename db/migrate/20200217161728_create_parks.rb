class CreateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :parks do |t|
      t.string :geolocalization
      t.integer :types_of_vehicles

      t.timestamps
    end
  end
end
