# frozen_string_literal: true

require File.expand_path("lib/noticeme/version", __dir__)

Gem::Specification.new do |spec|
  spec.name = "noticeme"
  spec.version = Noticeme::VERSION
  spec.authors = ["Houdini Project contributors"]
  spec.email = [""]
  spec.summary = "Summary"
  spec.description = "Description"
  spec.homepage = "https://github.com/houdiniproject/noticeme-rb"
  spec.license = "AGPL-3.0-or-later WITH WTO-AP-3.0-or-later"
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = ">= 2.7.0"

  spec.files = Dir["README.md",
    "LICENSE", "AGPL-3.0.txt", "CCO-1.0",
    "GPL-3.0.txt", "LGPL-3.0.txt",
    "Web-Template-Output-Additional-Permission.txt",
    "lib/**/*.rb",
    "lib/**/*.rake",
    "noticeme.gemspec", ".github/*.md",
    "Gemfile", "Rakefile"]
  spec.extra_rdoc_files = ["README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_dependency "bundler"

  spec.metadata = {
    "rubygems_mfa_required" => "true"
  }
end
