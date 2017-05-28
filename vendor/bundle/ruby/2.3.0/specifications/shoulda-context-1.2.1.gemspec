# -*- encoding: utf-8 -*-
# stub: shoulda-context 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "shoulda-context"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["thoughtbot, inc.", "Tammer Saleh", "Joe Ferris", "Ryan McGeary", "Dan Croak", "Matt Jankowski"]
  s.date = "2014-04-02"
  s.description = "Context framework extracted from Shoulda"
  s.email = "support@thoughtbot.com"
  s.executables = ["convert_to_should_syntax"]
  s.files = ["bin/convert_to_should_syntax"]
  s.homepage = "http://thoughtbot.com/community/"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Context framework extracted from Shoulda"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<appraisal>, ["~> 0.5"])
      s.add_development_dependency(%q<rails>, [">= 3.0"])
      s.add_development_dependency(%q<mocha>, ["~> 0.9.10"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, ["~> 2.1.0"])
    else
      s.add_dependency(%q<appraisal>, ["~> 0.5"])
      s.add_dependency(%q<rails>, [">= 3.0"])
      s.add_dependency(%q<mocha>, ["~> 0.9.10"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<test-unit>, ["~> 2.1.0"])
    end
  else
    s.add_dependency(%q<appraisal>, ["~> 0.5"])
    s.add_dependency(%q<rails>, [">= 3.0"])
    s.add_dependency(%q<mocha>, ["~> 0.9.10"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<test-unit>, ["~> 2.1.0"])
  end
end
