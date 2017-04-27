# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'myanimelist/version'

Gem::Specification.new do |spec|
  spec.name          = 'myanimelist'
  spec.version       = MyAnimeList::VERSION
  spec.authors       = ['Harvey Ico']
  spec.email         = ['godstrikerharvey@gmail.com']
  spec.description   = %q{The API for MyAnimeList.net}
  spec.summary       = %q{This gem will helps you to make your life easier and better :)}
  spec.homepage      = 'https://github.com/sanzo12/myanimelist'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '1.3'
  spec.add_development_dependency 'rake', '12.0.0'
  spec.add_dependency 'rest-client', '2.0.2'
  spec.add_dependency 'xml-simple', '1.1.5'
end
