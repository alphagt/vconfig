class FixTypeColumn < ActiveRecord::Migration[7.0]
  def change
  	rename_column :products, :type, :ftype
  end
end
