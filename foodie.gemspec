require_relative "lib/foodie/version"

Gem::Specification.new do |spec|
  spec.name        = "foodie"
  spec.version     = Foodie::VERSION
  spec.authors     = ["sachin-sivadasan"]
  spec.email       = ["sachinkarunagappally@gmail.com"]
  spec.homepage    = "https://github.com/sachin-sivadasan/Foodie/tree/gem"
  spec.summary     = "Summary of Foodie."
  spec.description = "Description of Foodie."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sachin-sivadasan/Foodie/tree/gem"
  spec.metadata["changelog_uri"] = "https://github.com/sachin-sivadasan/Foodie/tree/gem"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.2", ">= 6.1.2.1"
end
