# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'timeliner_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "timeliner_rails"
  spec.version       = TimelinerRails::VERSION
  spec.authors       = ["Luisa Lima"]
  spec.email         = ["luisalima@dcc.fc.up.pt"]
  spec.description   = %q{This gem packages the Timeliner.js assets (javascripts, stylesheets, and images) for the Rails 3.1+ asset pipeline.}
  spec.summary       = %q{This gem packages the Timeliner.js assets (javascripts, stylesheets, and images) for the Rails 3.1+ asset pipeline.}
  spec.homepage      = "http://github.com/luisalima/timeliner_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "~> 3.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
