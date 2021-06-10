module Tik
  class Product < ApplicationRecord
    has_many :pictures, as: :imageable
  end
end
