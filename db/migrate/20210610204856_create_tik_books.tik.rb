# This migration comes from tik (originally 20210610191114)
class CreateTikBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_books do |t|
      t.text :book_name
      t.references :author, index: true#, foreign_key: true
      # t.references :author, index: { name: "index_tik_books_on_auther_id" }

      t.timestamps
    end
  end
end
