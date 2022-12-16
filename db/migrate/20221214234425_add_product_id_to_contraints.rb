class AddProductIdToContraints < ActiveRecord::Migration[7.0]
  def change
    add_column :constraints, :product_id, :bigint
  end
end
