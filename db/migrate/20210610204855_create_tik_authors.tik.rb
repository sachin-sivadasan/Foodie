# This migration comes from tik (originally 20210610191034)
class CreateTikAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_authors do |t|
      t.text :name

      t.timestamps
    end
  end
end
