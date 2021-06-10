# This migration comes from tik (originally 20210610205747)
class CreateTikPhysicians < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_physicians do |t|
      t.text :phy_name

      t.timestamps
    end
  end
end
