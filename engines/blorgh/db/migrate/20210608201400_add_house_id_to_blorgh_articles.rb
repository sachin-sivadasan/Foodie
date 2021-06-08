class AddHouseIdToBlorghArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :blorgh_articles, :house_id, :integer
  end
end
