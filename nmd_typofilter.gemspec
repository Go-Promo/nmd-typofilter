$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nmd_typofilter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nmd_typofilter"
  s.version     = NmdTypofilter::VERSION
  s.authors     = ["Go-Promo"]
  s.email       = ["aavdeev@go-promo.ru"]
  s.homepage    = "https://github.com/Go-Promo/nmd-typofilter"
  s.summary     = "Initialize Typofilter jQuery-plugin"
  s.description = "Initialize Typofilter jQuery-plugin"

  s.files = Dir["{lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails"
  s.add_dependency "jquery-rails"
  s.add_dependency "coffee-script"
end
