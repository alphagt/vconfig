class CreateCoverages < ActiveRecord::Migration[7.0]
  def change
    create_table :coverages do |t|
      t.string :name
      t.string :code
      t.string :version
      t.string :type
      t.string :carrier

      t.timestamps
    end
  end
end
