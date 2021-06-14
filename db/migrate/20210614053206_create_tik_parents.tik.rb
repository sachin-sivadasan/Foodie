# This migration comes from tik (originally 20210611213346)
class CreateTikParents < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_parents do |t|
      t.text :p_name

      t.timestamps
    end
  end
end
