require_relative "lib/blorgh/version"

Gem::Specification.new do |spec|
  spec.name        = "blorgh"
  spec.version     = Blorgh::VERSION
  spec.authors     = ["sachin-sivadasan"]
  spec.email       = ["sachinkarunagappally@gmail.com"]
  spec.homepage    = ""
  spec.summary     = "Summary of Blorgh."
  spec.description = "Description of Blorgh."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = 'https://github.com/sachin-sivadasan/Foodie'#spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sachin-sivadasan/Foodie"
  spec.metadata["changelog_uri"] = "https://github.com/sachin-sivadasan/Foodie"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.3", ">= 6.1.3.2"
end
