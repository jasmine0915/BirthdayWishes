class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :wish_id
      t.string :name
      t.string :body
      t.text :icon

      t.timestamps
    end
  end
end
