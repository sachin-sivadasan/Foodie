# This migration comes from tik (originally 20210610215312)
class CreateTikPictures < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_pictures do |t|
      t.text :p_name
      t.references :imageable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
