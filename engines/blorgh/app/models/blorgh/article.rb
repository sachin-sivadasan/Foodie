module Blorgh
  class Article < ApplicationRecord
    has_many :comments
    attr_accessor :author_name
    attr_accessor :house_name
    # belongs_to :author, class_name: "User"
    # belongs_to :author, class_name: Blorgh.author_class
    belongs_to :author, class_name: Blorgh.author_class.to_s
    # belongs_to :house, class_name: "Hengine::House"
    # belongs_to :house, class_name: Blorgh.house_class
    belongs_to :house, class_name: Blorgh.house_class.to_s

    before_validation :set_author, :set_house

    private

    def set_author
      # self.author = User.find_or_create_by(name: author_name)
      # self.author = Blorgh.author_class.constantize.find_or_create_by(name: author_name)
      self.author = Blorgh.author_class.find_or_create_by(name: author_name)
    end

    def set_house
      # self.house = Hengine::House.find_or_create_by(name: house_name)
      # self.house = Blorgh.house_class.constantize.find_or_create_by(name: house_name)
      self.house = Blorgh.house_class.find_or_create_by(name: house_name)
    end
  end
end
