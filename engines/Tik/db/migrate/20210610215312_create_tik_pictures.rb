class CreateTikPictures < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_pictures do |t|
      t.text :p_name
      t.references :imageable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
