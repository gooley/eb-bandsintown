# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "eb-bandsintown/version"

Gem::Specification.new do |s|
  s.name        = "eb-bandsintown"
  s.version     = Bandsintown::VERSION
  s.authors     = ["Christopher Gooley"]
  s.email       = ["c@thegooley.com"]
  s.homepage    = ""
  s.summary     = "A Ruby library for accessing the Bandsintown API."
  s.description = "Bandsintown.com API gem A Ruby library for accessing the Bandsintown API. The Bandsintown API lets any developer access the largest database of upcoming concert listings and concert tickets in the world. For more information visit http://www.bandsintown.com/api/requests."

  s.rubyforge_project = "eb-bandsintown"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "activesupport"
  s.add_runtime_dependency "json"
  s.add_runtime_dependency "rest-client"
end
