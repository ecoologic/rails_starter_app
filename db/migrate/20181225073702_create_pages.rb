class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.belongs_to :creator, null: false, index: true, foreign_key: { to_table: :users }
      t.belongs_to :parent_page, index: true, foreign_key: { to_table: :pages }

      t.string :name, null: false, index: true
      t.string :url, null: false, index: true, unique: true
      t.text :html

      t.index %i[parent_page_id name], unique: true

      t.timestamps
    end
    add_index :pages, :updated_at
  end
end
