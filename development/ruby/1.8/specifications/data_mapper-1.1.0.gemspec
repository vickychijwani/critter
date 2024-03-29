# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "data_mapper"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Kubb"]
  s.date = "2011-03-16"
  s.description = "Faster, Better, Simpler."
  s.email = ["dan.kubb@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt"]
  s.homepage = "http://datamapper.org"
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "datamapper"
  s.rubygems_version = "1.8.17"
  s.summary = "An Object/Relational Mapper for Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dm-core>, ["= 1.1.0"])
      s.add_runtime_dependency(%q<dm-aggregates>, ["= 1.1.0"])
      s.add_runtime_dependency(%q<dm-constraints>, ["= 1.1.0"])
      s.add_runtime_dependency(%q<dm-migrations>, ["= 1.1.0"])
      s.add_runtime_dependency(%q<dm-transactions>, ["= 1.1.0"])
      s.add_runtime_dependency(%q<dm-serializer>, ["= 1.1.0"])
      s.add_runtime_dependency(%q<dm-timestamps>, ["= 1.1.0"])
      s.add_runtime_dependency(%q<dm-validations>, ["= 1.1.0"])
      s.add_runtime_dependency(%q<dm-types>, ["= 1.1.0"])
      s.add_development_dependency(%q<hoe>, [">= 2.9.1"])
    else
      s.add_dependency(%q<dm-core>, ["= 1.1.0"])
      s.add_dependency(%q<dm-aggregates>, ["= 1.1.0"])
      s.add_dependency(%q<dm-constraints>, ["= 1.1.0"])
      s.add_dependency(%q<dm-migrations>, ["= 1.1.0"])
      s.add_dependency(%q<dm-transactions>, ["= 1.1.0"])
      s.add_dependency(%q<dm-serializer>, ["= 1.1.0"])
      s.add_dependency(%q<dm-timestamps>, ["= 1.1.0"])
      s.add_dependency(%q<dm-validations>, ["= 1.1.0"])
      s.add_dependency(%q<dm-types>, ["= 1.1.0"])
      s.add_dependency(%q<hoe>, [">= 2.9.1"])
    end
  else
    s.add_dependency(%q<dm-core>, ["= 1.1.0"])
    s.add_dependency(%q<dm-aggregates>, ["= 1.1.0"])
    s.add_dependency(%q<dm-constraints>, ["= 1.1.0"])
    s.add_dependency(%q<dm-migrations>, ["= 1.1.0"])
    s.add_dependency(%q<dm-transactions>, ["= 1.1.0"])
    s.add_dependency(%q<dm-serializer>, ["= 1.1.0"])
    s.add_dependency(%q<dm-timestamps>, ["= 1.1.0"])
    s.add_dependency(%q<dm-validations>, ["= 1.1.0"])
    s.add_dependency(%q<dm-types>, ["= 1.1.0"])
    s.add_dependency(%q<hoe>, [">= 2.9.1"])
  end
end
