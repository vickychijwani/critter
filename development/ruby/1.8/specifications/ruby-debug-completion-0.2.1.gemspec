# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ruby-debug-completion"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gabriel Horner"]
  s.date = "2010-11-09"
  s.description = "Provides ruby-debug command and command arguments completion with a completion system more powerful than irb's, compliments of bond."
  s.email = "gabriel.horner@gmail.com"
  s.extra_rdoc_files = ["README.rdoc", "LICENSE.txt"]
  s.files = ["README.rdoc", "LICENSE.txt"]
  s.homepage = "http://github.com/cldwalker/ruby-debug-completion"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "tagaholic"
  s.rubygems_version = "1.8.17"
  s.summary = "Mission: autocomplete ruby-debug"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bond>, [">= 0.3.3"])
    else
      s.add_dependency(%q<bond>, [">= 0.3.3"])
    end
  else
    s.add_dependency(%q<bond>, [">= 0.3.3"])
  end
end
