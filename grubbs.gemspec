# -*- Ruby -*-
# -*- encoding: utf-8 -*-

@thismod = 'grubbs'
require 'rake'
require 'rubygems' unless Object.const_defined?(:Gem)
require File.dirname(__FILE__) + "/lib/#{@thismod}/version" unless Object.const_defined?(:"#{@thismod.capitalize}")

Gem::Specification.new do |spec|
  spec.authors      = ['Wybo Dekker']
  spec.date         = Time.now
  spec.description  = 'see README'
  spec.email        = 'wybo@dekkerdocumenten.nl'
  spec.files        = [ "README",
			"Rakefile",
			"#{@thismod}.gemspec",
			"bin/#{@thismod}",
			"lib/#{@thismod}/version.rb",
		      ]
  spec.homepage      = "http://www.dekkerdocumenten.nl/ring/doc/#{@thismod}/rdoc/README.html"
  spec.name         = @thismod
  spec.licenses     = ['Ruby', 'GPL2']
  spec.platform     = Gem::Platform::RUBY
  spec.require_path = 'lib'
  spec.required_ruby_version = '>= 1.9.3'
  spec.summary      = 'Detect outliers in a row or column of data'
  spec.version      = eval("#{@thismod.capitalize}::VERSION")
  spec.has_rdoc     = true
  spec.extra_rdoc_files = 'README'
  spec.executables = [@thismod]
  spec.add_dependency('scriptingutils',[">= 0.0.4"])
  spec.add_dependency('rb-readline',[">= 0.4.2"])

  # Make the readme file the start page for the generated html
  spec.rdoc_options += %w(--main README)
  spec.rdoc_options += ['--title', "#{@thismod} #{spec.version} Documentation"]
end

# $Id$
