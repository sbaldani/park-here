class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :address
      t.string :phone
      t.string :email
      t.integer :id_number

      t.timestamps
    end
  end
end
