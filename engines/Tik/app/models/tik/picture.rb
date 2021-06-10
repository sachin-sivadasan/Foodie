module Tik
  class Picture < ApplicationRecord
    belongs_to :imageable, polymorphic: true
  end
end
