# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "mattetti-googlecharts"
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Aimonetti"]
  s.date = "2008-05-07"
  s.description = "Sexy Charts using Google API & Ruby"
  s.email = "mattaimonetti@gmail.com"
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "README.txt", "website/index.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "README.txt", "website/index.txt"]
  s.homepage = "http://googlecharts.rubyforge.org"
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "googlecharts"
  s.rubygems_version = "1.8.17"
  s.summary = "Sexy Charts using Google API & Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
