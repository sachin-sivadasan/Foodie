# This migration comes from blorgh (originally 20210601093839)
class CreateBlorghFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :blorgh_foods do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
