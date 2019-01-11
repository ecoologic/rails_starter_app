class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.belongs_to :creator, index: true, foreign_key: { to_table: :users }, null: false
      t.belongs_to :page, index: true, foreign_key: true, null: false
      t.belongs_to :question, index: true, foreign_key: true, null: false
      t.integer :rating, limit: 2, null: false
      t.text :quote, null: false

      t.timestamps
    end
    add_index :answers, :updated_at
  end
end
