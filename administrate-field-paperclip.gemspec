$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name = 'administrate-field-paperclip'
  gem.version = '0.0.2'
  gem.authors = ['Fernando Briano']
  gem.email = ['fernando@picandocodigo.net']
  gem.homepage = 'https://github.com/picandocodigo/administrate-field-paperclip'
  gem.summary = 'Paperclip field plugin for Administrate'
  gem.description = 'Integrates Paperclip as a field for Administrate in Rails apps'
  gem.license = 'MIT'

  gem.require_paths = ['lib']
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split('\n')

  gem.add_dependency 'administrate', '~> 0.4'
  gem.add_dependency 'rails', '~> 5.0'

  gem.add_development_dependency 'byebug'
  gem.add_development_dependency 'factory_girl'
  gem.add_development_dependency 'fog'
  gem.add_development_dependency 'paperclip'
  gem.add_development_dependency 'rspec', '~> 3.5'
  gem.add_development_dependency 'sqlite3'
end
