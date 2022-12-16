class CreatePvlists < ActiveRecord::Migration[7.0]
  def change
    create_table :pvlists do |t|
      t.string :pvtoken
      t.string :provider

      t.timestamps
    end
  end
end
