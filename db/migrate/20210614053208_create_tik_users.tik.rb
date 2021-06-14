# This migration comes from tik (originally 20210612100007)
class CreateTikUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_users do |t|
      t.text :u_name

      t.timestamps
    end
  end
end
