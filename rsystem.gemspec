# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rsystem/version'

Gem::Specification.new do |spec|
  spec.name          = "rsystem"
  spec.version       = RSystem::VERSION
  spec.authors       = ["Miles Jordan"]
  spec.email         = ["miles@milesjordan.com.au"]
  spec.summary       = %q{RSystem simply executes a system() call but it also echoes the command that it is about to execute to stdout.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "awesome_print"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
