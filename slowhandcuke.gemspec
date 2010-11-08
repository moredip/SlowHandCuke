# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "slowhandcuke/version"

Gem::Specification.new do |s|
  s.name        = "slowhandcuke"
  s.version     = Slowhandcuke::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Pete Hodgson"]
  s.email       = ["public@thepete.net"]
  s.homepage    = "http://github.com/moredip/slowhandcuke"
  s.summary     = %q{Cucumber formatter which gives feedback on the currently running step}
  s.description = %q{Cucumber formatter which gives feedback on the currently running step}

  s.add_dependency "cucumber"

  s.post_install_message = <<-EOS

  *****************************************************************
  * To use the slowhandcuke formatter, simple add                 *
  *   --format 'Slowhandcuke::Formatter'                          * 
  * to your cucumber.yml, Rakefile, or command line call          *
  *****************************************************************

  EOS

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
