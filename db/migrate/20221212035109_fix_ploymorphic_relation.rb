class FixPloymorphicRelation < ActiveRecord::Migration[7.0]
  def change
  	add_column :constraints, :constrainable_id, :bigint
  	add_column :constraints, :constrainable_type, :string
  	add_index :constraints, [:constrainable_type, :constrainable_id]
  end
end
