class CreateTikPhysicians < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_physicians do |t|
      t.text :phy_name

      t.timestamps
    end
  end
end
