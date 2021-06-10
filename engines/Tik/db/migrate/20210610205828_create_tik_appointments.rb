class CreateTikAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :tik_appointments do |t|
      t.text :app_name
      t.references :patient, null: false#, foreign_key: true
      t.references :physician, null: false#, foreign_key: true

      t.timestamps
    end
  end
end
