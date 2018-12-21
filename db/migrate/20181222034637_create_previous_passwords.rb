class CreatePreviousPasswords < ActiveRecord::Migration[5.2]
  def change
    create_table :previous_passwords do |t|
      t.string :salt, index: true
      t.string :encrypted_password, index: true
      t.references :user, foreign_key: true, null: false
    end
  end
end
