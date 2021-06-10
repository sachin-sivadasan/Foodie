class CreateTikProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_products do |t|
      t.text :p_name

      t.timestamps
    end
  end
end
