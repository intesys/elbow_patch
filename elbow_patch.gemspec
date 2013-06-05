# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elbow_patch/version'

Gem::Specification.new do |spec|
  spec.name          = "elbow_patch"
  spec.version       = ElbowPatch::VERSION
  spec.authors       = ["Nicola Prando"]
  spec.email         = ["nicola.prando@intesys.it"]
  spec.description   = %q{Apply CVE security fix when you cannot update Rails}
  spec.summary       = %q{Apply CVE security fix when you cannot update Rails}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end