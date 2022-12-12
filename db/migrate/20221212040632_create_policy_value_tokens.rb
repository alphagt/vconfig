class CreatePolicyValueTokens < ActiveRecord::Migration[7.0]
  def change
    create_table :policy_value_tokens do |t|
      t.string :token
      t.string :description

      t.timestamps
    end
  end
end
