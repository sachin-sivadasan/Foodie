module Tik
  class Author < ApplicationRecord
    has_many :books, class_name: "Tik::Book", dependent: :destroy
  end
end
