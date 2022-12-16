class AddProductIdToValueConfigs < ActiveRecord::Migration[7.0]
  def change
    add_column :value_configs, :product_id, :bigint
  end
end
