class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.boolean :private, default: true

      t.timestamps
    end
    add_foreign_key :lists, :users
  end
end
