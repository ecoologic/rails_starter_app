class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.references :parent_page, index: true, foreign_key: :pages

      t.string :name, null: false, index: true
      t.string :url, null: false, index: true, unique: true
      t.text :html, null: false, default: ''

      t.timestamps
    end
  end
end
