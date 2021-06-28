# This migration comes from tik (originally 20210614053458)
class CreateTikTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_tickets do |t|
      t.text :ticket_no, null: false, index: true
      t.text :ticket_type, null: false, index: true
      t.text :description
      t.string :status, default: "New", index: true

      t.timestamps
    end
  end
end
