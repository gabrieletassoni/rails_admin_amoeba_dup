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
  s.summary     = "Deep clone of records for rails_admin."
  s.description = "Only for the models you set as enabled, this plugin adds a member action that allows for deep configurable cloning of records."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency 'thecore', "~> 1.0"
  s.add_dependency 'amoeba'#, "~> 0"
end
