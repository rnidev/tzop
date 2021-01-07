# -*- encoding: utf-8 -*-
# stub: tzop 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "tzop"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["dev"]
  s.date = "2019-04-02"
  s.description = "TZOP provides daylight savings aware transformations between times in different time zones."
  s.email = "developinghuman1015@gmail.com"
  s.extra_rdoc_files = ["README.md", "CHANGES.md", "LICENSE"]
  s.files = [".gitignore", "CHANGES.md", "Gemfile", "LICENSE", "README.md", "Rakefile", "lib/tzop.rb", "lib/utils.rb", "tzop.gemspec"]
  s.licenses = ["MIT"]
  s.rdoc_options = ["--title", "TZOP", "--main", "README.md"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.5.1"
  s.summary = "Convert between different timezones"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<timezone_local>, ["~> 0.1.5"])
      s.add_runtime_dependency(%q<tzinfo>, [">= 0"])
      s.add_runtime_dependency(%q<chronic>, ["~> 0.10.2"])
    else
      s.add_dependency(%q<timezone_local>, ["~> 0.1.5"])
      s.add_dependency(%q<tzinfo>, [">= 0"])
      s.add_dependency(%q<chronic>, ["~> 0.10.2"])
    end
  else
    s.add_dependency(%q<timezone_local>, ["~> 0.1.5"])
    s.add_dependency(%q<tzinfo>, [">= 0"])
    s.add_dependency(%q<chronic>, ["~> 0.10.2"])
  end
end
