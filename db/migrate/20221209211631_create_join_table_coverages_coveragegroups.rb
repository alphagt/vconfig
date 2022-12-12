class CreateJoinTableCoveragesCoveragegroups < ActiveRecord::Migration[7.0]
  def change
    create_join_table :coverages, :coverage_groups do |t|
      # t.index [:coverage_id, :coverage_group_id]
      # t.index [:coverage_group_id, :coverage_id]
    end
  end
end
