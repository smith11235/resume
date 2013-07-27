# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
=begin
http://yehudakatz.com/2010/04/02/using-gemspecs-as-intended/
=end

Gem::Specification.new do |s|
  s.name        = "latex_resume"
  s.version     = "0.0.1.draft"
  s.platform    = Gem::Platform::RUBY
  s.homepage    = "http://github.com/smith11235/resume"
  s.required_rubygems_version = ">= 1.3.6"

	s.summary     = "Translates easily input resume data into a cleanly polished document using Latex"
	s.authors     = ["smith11235","gwilbur"]

  s.add_development_dependency "rspec"
	s.add_dependency "colorize"
 
  s.files        = Dir.glob("{lib}/latex_resume/*") + [ "README.md", "#{lib}/latex_resume.rb" ]
  s.require_path = 'lib'
end
