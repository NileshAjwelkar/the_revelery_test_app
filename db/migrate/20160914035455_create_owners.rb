class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owner do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
