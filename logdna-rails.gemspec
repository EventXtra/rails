# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logdna/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'logdna-rails'
  spec.version       = LogDNA::Rails::VERSION
  spec.author        = 'Edwin Lai'
  spec.email         = 'edwin@logdna.com'

  spec.summary       = 'ActiveSupport::Logger plugin for LogDNA'
  spec.homepage      = 'http://github.com/logdna/rails'
  spec.license       = 'MIT'

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'http', '~> 2.0'
  spec.add_runtime_dependency 'activesupport', '>= 4.0', '< 6.0'
  spec.add_runtime_dependency 'logdna', '~> 0.0'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'webmock', '~> 2.1'
end
