class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :jurisdiction
      t.string :code
      t.integer :status
      t.string :type
      t.date :in_force

      t.timestamps
    end
  end
end
