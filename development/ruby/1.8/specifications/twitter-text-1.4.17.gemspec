# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "twitter-text"
  s.version = "1.4.17"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Sanford", "Patrick Ewing", "Ben Cherry", "Britt Selvitelle", "Raffi Krikorian", "J.P. Cummins", "Yoshimasa Niwa", "Keita Fujii"]
  s.date = "2012-02-23"
  s.description = "A gem that provides text handling for Twitter"
  s.email = ["matt@twitter.com", "patrick.henry.ewing@gmail.com", "bcherry@gmail.com", "bs@brittspace.com", "raffi@twitter.com", "jcummins@twitter.com", "niw@niw.at", "keita@twitter.com"]
  s.homepage = "http://twitter.com"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "Twitter text handling library"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
  end
end
