module Tik
  class Patient < ApplicationRecord
    has_many :appointments
    has_many :t_a, through: :appointments, source: :physician, class_name: "Tik::Appointment"
    has_many :t_p, through: :appointments, source: :physician, class_name: "Tik::Physician"
    has_many :t, through: :appointments, source: :physician
  end
end
