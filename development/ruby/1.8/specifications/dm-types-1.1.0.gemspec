# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "dm-types"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Kubb"]
  s.date = "2011-03-16"
  s.description = "DataMapper plugin providing extra data types"
  s.email = "dan.kubb [a] gmail [d] com"
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = ["LICENSE", "README.rdoc"]
  s.homepage = "http://github.com/datamapper/dm-types"
  s.require_paths = ["lib"]
  s.rubyforge_project = "datamapper"
  s.rubygems_version = "1.8.17"
  s.summary = "DataMapper plugin providing extra data types"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bcrypt-ruby>, ["~> 2.1.4"])
      s.add_runtime_dependency(%q<dm-core>, ["~> 1.1.0"])
      s.add_runtime_dependency(%q<fastercsv>, ["~> 1.5.4"])
      s.add_runtime_dependency(%q<json>, ["~> 1.4.6"])
      s.add_runtime_dependency(%q<stringex>, ["~> 1.2.0"])
      s.add_runtime_dependency(%q<uuidtools>, ["~> 2.1.2"])
      s.add_development_dependency(%q<dm-validations>, ["~> 1.1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.1"])
    else
      s.add_dependency(%q<bcrypt-ruby>, ["~> 2.1.4"])
      s.add_dependency(%q<dm-core>, ["~> 1.1.0"])
      s.add_dependency(%q<fastercsv>, ["~> 1.5.4"])
      s.add_dependency(%q<json>, ["~> 1.4.6"])
      s.add_dependency(%q<stringex>, ["~> 1.2.0"])
      s.add_dependency(%q<uuidtools>, ["~> 2.1.2"])
      s.add_dependency(%q<dm-validations>, ["~> 1.1.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_dependency(%q<rspec>, ["~> 1.3.1"])
    end
  else
    s.add_dependency(%q<bcrypt-ruby>, ["~> 2.1.4"])
    s.add_dependency(%q<dm-core>, ["~> 1.1.0"])
    s.add_dependency(%q<fastercsv>, ["~> 1.5.4"])
    s.add_dependency(%q<json>, ["~> 1.4.6"])
    s.add_dependency(%q<stringex>, ["~> 1.2.0"])
    s.add_dependency(%q<uuidtools>, ["~> 2.1.2"])
    s.add_dependency(%q<dm-validations>, ["~> 1.1.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rake>, ["~> 0.8.7"])
    s.add_dependency(%q<rspec>, ["~> 1.3.1"])
  end
end
