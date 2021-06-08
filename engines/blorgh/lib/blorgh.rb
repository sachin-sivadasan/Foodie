require "blorgh/version"
require "blorgh/engine"

module Blorgh
  # Your code goes here...
  mattr_accessor :author_class, :house_class
  def self.author_class
    @@author_class.constantize
  end
  def self.house_class
    @@house_class.constantize
  end
end
