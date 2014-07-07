# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/omniture/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-omniture"
  spec.version       = OmniAuth::Omniture::VERSION
  spec.authors       = ["Sascha Knobloch"]
  spec.email         = ["saschaknobloch.dev@gmail.com"]
  spec.description   = %q{Login with Omniture OAuth2 strategy for OmniAuth 1.0}
  spec.summary       = %q{Login with Omniture OAuth2 strategy for OmniAuth 1.0}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2', '~> 1.1'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
