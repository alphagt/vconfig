class RemoveCoverageIdFromContraints < ActiveRecord::Migration[7.0]
  def change
    remove_column :constraints, :coverage_id, :integer
  end
end
