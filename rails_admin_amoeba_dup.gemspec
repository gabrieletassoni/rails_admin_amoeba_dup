$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_amoeba_dup/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_amoeba_dup"
  s.version     = RailsAdminAmoebaDup::VERSION
  s.authors     = ["Gabriele Tassoni"]
  s.email       = ["gabrieletassoni@taris.it"]
  s.homepage    = "https://www.taris.it"
  s.summary     = "Fine control for duping."
  s.description = "You have to enable it."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency 'thecore'
  s.add_dependency 'amoeba'
end
