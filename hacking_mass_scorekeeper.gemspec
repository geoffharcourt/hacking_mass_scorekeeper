# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hacking_mass_scorekeeper/version'

Gem::Specification.new do |spec|
  spec.name          = "hacking_mass_scorekeeper"
  spec.version       = HackingMassScorekeeper::VERSION
  spec.authors       = ["Geoff Harcourt"]
  spec.email         = ["geoff.harcourt@gmail.com"]

  spec.summary       = %q{A gem to find the standings for a group of HACKING MASS teams.}
  spec.description   = %q{Find the relative standings of a subset of the HACKING MASS field.}
  spec.homepage      = "https://github.com/geoffharcourt/hacking_mass_scorekeeper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
