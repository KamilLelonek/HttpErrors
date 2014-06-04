# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'http_errors/version'

Gem::Specification.new do |spec|
  spec.name          = 'http_errors'
  spec.version       = HttpErrors::VERSION
  spec.authors       = ['Kamil Lelonek']
  spec.email         = ['squixy.sln@gmail.com']
  spec.summary       = %q{Micro-gem for wrapping HTTP errors.}
  spec.description   = %q{This gem makes simpler to manage, raise and catching standard HTTP errors.}
  spec.homepage      = 'https://github.com/KamilLelonek/HttpErrors'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
