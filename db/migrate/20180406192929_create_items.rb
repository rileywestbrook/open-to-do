class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :description
      t.boolean :completed, default: false

      t.timestamps
    end
    add_foreign_key :items, :lists
  end
end
