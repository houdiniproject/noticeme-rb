# frozen_string_literal: true

require File.expand_path('lib/noticeme/version', __dir__)

Gem::Specification.new do |spec|
  spec.name                  = 'noticeme'
  spec.version               = Noticeme::VERSION
  spec.authors               = ['Houdini Project contributors']
  spec.email                 = ['']
  spec.summary               = 'Lokalise integration for Ruby on Rails'
  spec.description           = 'This gem allows to exchange translation files between your Rails app and Lokalise TMS.'
  spec.homepage              = 'https://github.com/bodrovis/lokalise_rails'
  spec.license               = ''
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.7.0'

  spec.files = Dir['README.md', 
                   'LICENSE',
                   'CHANGELOG.md', 'lib/**/*.rb',
                   'lib/**/*.rake',
                   'lokalise_rails.gemspec', '.github/*.md',
                   'Gemfile', 'Rakefile']
  # spec.extra_rdoc_files = ['README.md']
  spec.require_paths    = ['lib']

  spec.add_dependency 'lokalise_manager', '~> 3.2'
  spec.add_dependency 'zeitwerk', '~> 2.4'

  spec.metadata = {
    'rubygems_mfa_required' => 'true'
  }
end