require_relative "lib/tik/version"

Gem::Specification.new do |spec|
  spec.name        = "tik"
  spec.version     = Tik::VERSION
  spec.authors     = ["sachin-sivadasan"]
  spec.email       = ["sachinkarunagappally@gmail.com"]
  spec.homepage    = ""
  spec.summary     = ": Summary of Tik."
  spec.description = ": Description of Tik."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = "https://github.com/sachin-sivadasan/Foodie"
  spec.metadata["source_code_uri"] = "https://github.com/sachin-sivadasan/Foodie"
  spec.metadata["changelog_uri"] = "https://github.com/sachin-sivadasan/Foodie"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.3", ">= 6.1.3.2"
end
