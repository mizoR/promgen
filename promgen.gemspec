# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'promgen/version'

Gem::Specification.new do |spec|
  spec.name          = "promgen"
  spec.version       = Promgen::VERSION
  spec.authors       = ["wyukawa"]
  spec.email         = ["wyukawa@gmail.com"]

  spec.summary       = %q{Promgen is a configuration file generator for Prometheus.}
  spec.homepage      = "https://github.com/line/promgen"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'webmock'

  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'mysql'

  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'test-unit'

  spec.add_dependency 'sinatra'
  spec.add_dependency 'shotgun'
  spec.add_dependency 'sequel'
  spec.add_dependency 'erubis'
  spec.add_dependency 'sinatra-contrib'
  spec.add_dependency 'rubocop'
  spec.add_dependency 'chronic_duration'
  spec.add_dependency 'mail'
  spec.add_dependency 'unicorn'
  spec.add_dependency 'thor'
end
