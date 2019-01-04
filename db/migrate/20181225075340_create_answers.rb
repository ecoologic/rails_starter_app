class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.references :page, foreign_key: true, index: true, null: false
      t.references :question, foreign_key: true, index: true, null: false
      t.integer :rating, limit: 2, null: false, default: 0
      t.text :quote, null: false, default: ''

      t.timestamps
    end
  end
end
