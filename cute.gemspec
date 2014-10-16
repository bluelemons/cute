# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cute/version'

Gem::Specification.new do |spec|
  spec.name          = "cute"
  spec.version       = Cute::VERSION
  spec.authors       = ["Eloy Espinaco"]
  spec.email         = ["eloyesp@gmail.com"]
  spec.summary       = %q{A cute test framework.}
  spec.description   = %q{Test framework that want simplicity and flexibility.}
  spec.homepage      = ""
  spec.license       = "GPL"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "guard", "~> 2.6"
end
