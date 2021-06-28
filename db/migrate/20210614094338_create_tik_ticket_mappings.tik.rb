# This migration comes from tik (originally 20210614053541)
class CreateTikTicketMappings < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_ticket_mappings do |t|
      t.text :association_type, null: false, index: true
      t.boolean :active, null: false, default: true, index: true
      t.references :ticket, null: false, index: true
      t.references :entity, polymorphic: true, null: false, index: true

      t.timestamps
    end
  end
end
