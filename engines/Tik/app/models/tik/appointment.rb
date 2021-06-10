module Tik
  class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :physician
  end
end
