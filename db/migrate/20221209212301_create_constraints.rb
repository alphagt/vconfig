class CreateConstraints < ActiveRecord::Migration[7.0]
  def change
    create_table :constraints do |t|
      t.references :coverage_group, null: false, foreign_key: true
      t.string :name
      t.integer :subject
      t.string :value_token
      t.string :operator
      t.boolean :optional
      t.boolean :default
      t.string :units
      t.boolean :agreggate

      t.timestamps
    end
  end
end
