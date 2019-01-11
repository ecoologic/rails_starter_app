class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :value, null: false
      t.integer :position, limit: 2, null: false, index: true, unique: true

      t.timestamps
    end
    add_index :questions, :updated_at
  end
end
