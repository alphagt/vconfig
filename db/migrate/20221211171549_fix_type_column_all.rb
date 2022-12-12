class FixTypeColumnAll < ActiveRecord::Migration[7.0]
  def change
  	rename_column :coverages, :type, :ctype
  end
end
