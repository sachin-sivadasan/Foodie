# This migration comes from tik (originally 20210611213415)
class CreateTikChildren < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_children do |t|
      t.text :c_name
      t.references :parent, null: true, index: true
      t.references :school, foreign_key: { to_table: :tik_children }
      t.references :entity, polymorphic: true, null: true, index: true

      t.timestamps
    end
  end
end
