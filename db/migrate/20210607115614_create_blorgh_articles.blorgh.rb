# This migration comes from blorgh (originally 20210607115245)
class CreateBlorghArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :blorgh_articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
