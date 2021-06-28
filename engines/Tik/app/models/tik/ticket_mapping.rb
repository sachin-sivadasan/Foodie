module Tik
  class TicketMapping < ApplicationRecord
    belongs_to :ticket
    belongs_to :entity, polymorphic: true
    scope :created_for, -> { where(association_type: "created_for") }
    scope :created_by, -> { where(association_type: "created_by") }
  end
end
