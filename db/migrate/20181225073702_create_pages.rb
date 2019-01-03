class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :name, null: false, index: true, unique true
      t.string :url, null: false, index: true, unique: true
      t.text :html, null: false, default: ''

      t.timestamps
    end
  end
end
