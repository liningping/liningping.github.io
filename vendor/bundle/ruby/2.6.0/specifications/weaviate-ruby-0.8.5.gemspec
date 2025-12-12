# -*- encoding: utf-8 -*-
# stub: weaviate-ruby 0.8.5 ruby lib

Gem::Specification.new do |s|
  s.name = "weaviate-ruby".freeze
  s.version = "0.8.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/andreibondarev/weaviate-ruby/CHANGELOG.md", "homepage_uri" => "https://github.com/andreibondarev/weaviate-ruby", "source_code_uri" => "https://github.com/andreibondarev/weaviate-ruby" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrei Bondarev".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-07-19"
  s.description = "Ruby wrapper for the Weaviate.io API".freeze
  s.email = ["andrei@sourcelabs.io".freeze, "andrei.bondarev13@gmail.com".freeze]
  s.homepage = "https://github.com/andreibondarev/weaviate-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6.0".freeze)
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "Ruby wrapper for the Weaviate.io API".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<faraday_middleware>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<graphlient>.freeze, ["~> 0.6.0"])
      s.add_development_dependency(%q<pry-byebug>.freeze, ["~> 3.9"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<rdiscount>.freeze, [">= 0"])
    else
      s.add_dependency(%q<faraday>.freeze, ["~> 1"])
      s.add_dependency(%q<faraday_middleware>.freeze, ["~> 1"])
      s.add_dependency(%q<graphlient>.freeze, ["~> 0.6.0"])
      s.add_dependency(%q<pry-byebug>.freeze, ["~> 3.9"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<rdiscount>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<faraday>.freeze, ["~> 1"])
    s.add_dependency(%q<faraday_middleware>.freeze, ["~> 1"])
    s.add_dependency(%q<graphlient>.freeze, ["~> 0.6.0"])
    s.add_dependency(%q<pry-byebug>.freeze, ["~> 3.9"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<rdiscount>.freeze, [">= 0"])
  end
end
