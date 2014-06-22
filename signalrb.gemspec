# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'signalrb/version'

Gem::Specification.new do |spec|
  spec.name          = "signalrb"
  spec.version       = Signalrb::VERSION
  spec.authors       = ["Jason Wall"]
  spec.email         = ["javajo@gmail.com"]
  spec.summary       = %q{SignalR.NET inspired websockets for Ruby}
  spec.description   = %q{}
  spec.homepage      = "http://github.com/thejayvm/signalrb"
  spec.license       = "Apache"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "faye-websocket", "> 0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
