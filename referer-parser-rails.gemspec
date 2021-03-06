# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'referer-parser/version'

Gem::Specification.new do |gem|
  gem.name          = "referer-parser-rails"
  gem.version       = RefererParser::Rails::VERSION
  gem.authors       = ["Alexey Solilin"]
  gem.email         = ["solilin@jetrockets.ru"]
  gem.summary       = %q{Referer-parser for Rails}
  gem.homepage      = "https://github.com/jetrockets/referer-parser-rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'factory_girl'

  gem.add_dependency 'rails'
  gem.add_dependency 'referer-parser'
end
