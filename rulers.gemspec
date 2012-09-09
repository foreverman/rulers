# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rulers/version"

Gem::Specification.new do |s|
  s.name        = "rulers"
  s.version     = Rulers::VERSION
  s.authors     = ["Sean Liu"]
  s.email       = ["seanliugm@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A Rack-based Web Framework}
  s.description = %q{A Rack-based Web Framework, but with extra awesome}

  s.rubyforge_project = "rulers"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "rack"
end
