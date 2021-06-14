module Tik
  class Child < ApplicationRecord
    belongs_to :parent, optional: true
    belongs_to :entity, polymorphic: true

    has_one :school, class_name: "Tik::Child", foreign_key: "school_id"
    belongs_to :school, class_name: "Tik::Child", optional: true

    scope :created_for, lambda { where(c_name: "sachin_s") }
  end
end
