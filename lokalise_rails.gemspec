require File.expand_path('lib/lokalise_rails/version', __dir__)

Gem::Specification.new do |spec|
    spec.name                  = 'lokalise_rails'
    spec.version               = LokaliseRails::VERSION
    spec.authors               = ['AlirezaSHNB']
    spec.email                 = ['alirezasharifpour79@gmail.com']
    spec.summary               = 'Lokalise integration for Ruby on Rails'
    spec.description           = 'This gem allows to exchange translation files between your Rails app and Lokalise TMS.'
    spec.homepage              = 'https://github.com/AlirezaSHNB/lokalise_rails'
    spec.license               = 'MIT'
    spec.platform              = Gem::Platform::RUBY
    spec.required_ruby_version = '>= 2.5.0'

    spec.files = Dir['README.md', 'LICENSE',
        'CHANGELOG.md', 'lib/**/*.rb',
        'lib/**/*.rake',
        'lokalise_rails.gemspec', '.github/*.md',
        'Gemfile', 'Rakefile']
    spec.extra_rdoc_files = ['README.md']

    spec.add_dependency 'ruby-lokalise-api', '~> 3.1'
    spec.add_dependency 'rubyzip', '~> 2.3'

    spec.add_development_dependency 'codecov', '~> 0.1'
    spec.add_development_dependency 'dotenv', '~> 2.5'
    spec.add_development_dependency 'rails', '~> 6.0.3'
    spec.add_development_dependency 'rake', '~> 13.0'
    spec.add_development_dependency 'rspec', '~> 3.6'
    spec.add_development_dependency 'rspec-rails', '~> 4.0'
    spec.add_development_dependency 'rubocop', '~> 0.60'
    spec.add_development_dependency 'rubocop-performance', '~> 1.5'
    spec.add_development_dependency 'rubocop-rspec', '~> 1.37'
    spec.add_development_dependency 'simplecov', '~> 0.16'
    spec.add_development_dependency 'vcr', '~> 6.0'
end