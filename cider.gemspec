# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cider/version'

Gem::Specification.new do |gem|
  gem.name          = "cider"
  gem.version       = Cider::VERSION
  gem.authors       = ["Alexey Blinov"]
  gem.email         = ["nilcolor@gmail.com"]
  gem.description   = %q{Helps you load development seed. That is - seeds like a migrations: with versions etc.}
  gem.summary       = "{cider-#{gem.version}"
  gem.homepage      = "http://github.com/nilcolor/cider"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
