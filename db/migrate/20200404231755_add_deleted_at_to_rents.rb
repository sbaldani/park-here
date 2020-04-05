class AddDeletedAtToRents < ActiveRecord::Migration[6.0]
  def change
    add_column :rents, :deleted_at, :datetime
    add_index :rents, :deleted_at
  end
end
