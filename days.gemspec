# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'days/version'

Gem::Specification.new do |gem|
  gem.name          = "days"
  gem.version       = Days::VERSION
  gem.authors       = ["Shota Fukumori (sora_h)"]
  gem.email         = ["her@sorah.jp"]
  gem.description   = %q{Simple blog system built up with Sinatra.}
  gem.summary       = %q{Simple blog system built up with Sinatra.}
  gem.homepage      = "https://github.com/sorah/days"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "sinatra", '~> 1.3.3'
  gem.add_dependency "thor", '~> 0.16.0'
  gem.add_dependency "rack_csrf", '~> 2.4.0'

  gem.add_dependency "settingslogic", '~> 2.0.9'

  gem.add_dependency "sprockets", '~> 2.2.2'
  gem.add_dependency "haml", '~> 3.1.7'
  gem.add_dependency "sass", '~> 3.2.5'

  gem.add_dependency "redcarpet", '~> 2.2.2'
  gem.add_dependency "builder", '~> 3.0.0'

  gem.add_dependency "activerecord", "~> 3.2.14"
  gem.add_dependency "kaminari", "~> 0.13"
  gem.add_dependency "padrino-helpers", '~> 0.9.21'
  gem.add_dependency "stringex", '~> 1.5.1'
  gem.add_dependency "bcrypt-ruby", '~> 3.0.1'

  gem.add_development_dependency "sqlite3"

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rack-test"
  gem.add_development_dependency "fuubar"

  gem.add_dependency "pry"
  gem.add_development_dependency "pry-nav"
end
