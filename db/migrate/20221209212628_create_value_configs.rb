class CreateValueConfigs < ActiveRecord::Migration[7.0]
  def change
    create_table :value_configs do |t|
      t.references :constraint, null: false, foreign_key: true
      t.integer :default_value
      t.integer :max_value
      t.integer :min_value

      t.timestamps
    end
  end
end
