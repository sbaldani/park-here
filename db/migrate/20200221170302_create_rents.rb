class CreateRents < ActiveRecord::Migration[6.0]
  def change
    create_table :rents do |t|
      t.references :owner, index: true, foreign_key: { to_table: :users }
      t.references :client, index:true, foreign_key: { to_table: :users }
      t.references :car
      t.references :park
      t.float :price
      t.datetime :date_from
      t.datetime :date_to

      t.timestamps
    end
  end
end
