class CreateTikAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_authors do |t|
      t.text :name

      t.timestamps
    end
  end
end
