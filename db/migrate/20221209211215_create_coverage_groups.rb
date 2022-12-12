class CreateCoverageGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :coverage_groups do |t|
      t.references :product, null: false, foreign_key: true
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
