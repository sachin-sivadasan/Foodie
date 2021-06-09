# This migration comes from tik (originally 20210609113930)
class CreateTikTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_tickets do |t|
      t.string :name

      t.timestamps
    end
  end
end
