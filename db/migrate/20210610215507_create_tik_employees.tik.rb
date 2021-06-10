# This migration comes from tik (originally 20210610215230)
class CreateTikEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_employees do |t|
      t.text :e_name

      t.timestamps
    end
  end
end
