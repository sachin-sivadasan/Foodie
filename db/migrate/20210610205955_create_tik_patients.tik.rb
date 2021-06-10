# This migration comes from tik (originally 20210610205732)
class CreateTikPatients < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_patients do |t|
      t.text :pat_name

      t.timestamps
    end
  end
end
