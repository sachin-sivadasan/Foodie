module Tik
  class Ticket < ApplicationRecord
    # has_many :ticket_mappings, class_name: "Tik::TicketMapping"

    # has_one :createdFor, -> { created_for }, class_name: "Tik::TicketMapping"
    # has_one :created_by, -> { created_by }, class_name: "Tik::TicketMapping"

    has_many :createdFor_t, -> { created_for }, through: :ticket_mappings

    # has_many :created_for,
    #          through: :ticket_mappings,
    #          source_type: "Tik::User",
    #          source: :entity

    enum status: {
           new: "New",
           in_progress: "In_Progress",
           resolved: "Resolved",
           closed: "Closed",
           re_opened: "Re_Opened",
           cancelled: "Cancelled",
         }, _prefix: :status
  end
end
