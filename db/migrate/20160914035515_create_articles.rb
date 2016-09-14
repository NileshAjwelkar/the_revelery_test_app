class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
