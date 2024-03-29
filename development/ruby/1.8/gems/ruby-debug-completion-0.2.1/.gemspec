# -*- encoding: utf-8 -*-
require 'rubygems' unless Object.const_defined?(:Gem)
require File.dirname(__FILE__) + "/lib/ruby-debug/completion"
 
Gem::Specification.new do |s|
  s.name        = "ruby-debug-completion"
  s.version     = Debugger::Completion::VERSION
  s.authors     = ["Gabriel Horner"]
  s.email       = "gabriel.horner@gmail.com"
  s.homepage    = "http://github.com/cldwalker/ruby-debug-completion"
  s.summary = "Mission: autocomplete ruby-debug"
  s.description =  "Provides ruby-debug command and command arguments completion with a completion system more powerful than irb's, compliments of bond."
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = 'tagaholic'
  s.add_dependency 'bond', '>= 0.3.3'
  s.files = Dir.glob(%w[{lib,test}/**/*.rb bin/* [A-Z]*.{txt,rdoc} ext/**/*.{rb,c} **/deps.rip]) + %w{Rakefile .gemspec}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE.txt"]
  s.license = 'MIT'
end
