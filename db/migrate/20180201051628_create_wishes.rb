class CreateWishes < ActiveRecord::Migration[5.1]
  def change
    create_table :wishes do |t|
      t.text :description
      t.string :object
      t.date :deadline
      t.string :title
      t.text :image
      t.text :message_url
      t.text :object_url

      t.timestamps
    end
  end
end
