class CreateFoodiePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :foodie_posts do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
