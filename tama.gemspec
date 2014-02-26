# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tama/version'

Gem::Specification.new do |spec|
  spec.name          = "tama"
  spec.version       = Tama::VERSION
  spec.authors       = ["Mori"]
  spec.email         = ["keitamori@gmail.com"]
  spec.summary       = %q{Tama est un projet de tamagotchi en version informatique.}
  spec.description   = %q{Simulation de comportement animal en informatique.}
  spec.homepage      = "http://github.com/mosleymos/tama.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "chronic"
  spec.add_development_dependency "highline"
  spec.add_development_dependency "rdoc"
end
