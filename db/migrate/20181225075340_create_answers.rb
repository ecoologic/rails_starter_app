class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :user, foreign_key: true, null: false
      t.references :page, foreign_key: true, null: false
      t.references :question, foreign_key: true, null: false
      t.integer :rating, limit: 2, null: false, default: 0
      t.text :quote
      # TODO: upvotes...
      # t.array :upvote_user_ids, null: false, default: []
      # t.array :downvote_user_ids, null: false, default: []

      t.timestamps
    end
  end
end
