# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'greek_names/version'

Gem::Specification.new do |spec|
  spec.name          = "greek_names"
  spec.version       = GreekNames::VERSION
  spec.authors       = ["Antony Falegkos"]
  spec.email         = ["falegk1@gmail.com"]

  spec.summary       = "A library for correct appearance Greek names as appropriate"
  spec.description   = "A library for correct appearance Greek names as appropriate"
  spec.homepage      = "https://github.com/falegk/greek_names"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

end
