class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :sub_title, null: false
      t.text :text, null: false
      t.string :pen_name, null: false
      t.string :name, null: false
      t.string :name_kana, null: false
      t.string :prefecture, null: false
      t.date :birthday, null: false
      t.string :gender, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
