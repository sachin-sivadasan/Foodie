module Tik
  class Parent < ApplicationRecord
    has_many :childs, class_name: "Tik::Child", primary_key: "id"
    has_many :child,# -> { created_for },
             through: :childs,
              class_name: "Tik::User",
             source_type: "Tik::User",
             source: :entity
    has_many :child2,
             # class_name: "Tik::Child",
             source: :school,
             through: :childs
    has_many :child3,
             class_name: "Tik::Child",
             source: :parent,
             through: :childs

    # def child2
    #   childs.child
    # end
  end
end
