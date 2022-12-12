class AddCoverageIdToConstraints < ActiveRecord::Migration[7.0]
  def change
    add_column :constraints, :coverage_id, :integer
  end
end
