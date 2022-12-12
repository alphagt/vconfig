class RemoveCoverageGroupIdFromContraints < ActiveRecord::Migration[7.0]
  def change
    remove_column :constraints, :coverage_group_id, :integer
  end
end
