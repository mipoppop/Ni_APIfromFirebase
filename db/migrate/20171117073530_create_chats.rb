class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.string :firebase_id
      t.text :content

      t.timestamps
    end

    add_index :chats, :firebase_id, unique: true
  end
end
