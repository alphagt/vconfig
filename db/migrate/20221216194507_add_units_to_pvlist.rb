class AddUnitsToPvlist < ActiveRecord::Migration[7.0]
  def change
    add_column :pvlists, :units, :string
  end
end
