@echo off
@if not "%~d0" == "~d0" goto WinNT
C:\lan\ruby-1.9.1-p129\bin\ruby -x "C:/lan/ruby-1.9.1-p129/bin/gem.bat" %1 %2 %3 %4 %5 %6 %7 %8 %9
@goto endofruby
:WinNT
"%~dp0ruby" -x "%~f0" %*
@goto endofruby
#!C:/lan/ruby-1.9.1-p129/bin/ruby
#--
# Copyright 2006 by Chad Fowler, Rich Kilmer, Jim Weirich and others.
# All rights reserved.
# See LICENSE.txt for permissions.
#++

require 'rubygems'
require 'rubygems/gem_runner'
require 'rubygems/exceptions'

required_version = Gem::Requirement.new "> 1.8.3"

unless required_version.satisfied_by? Gem.ruby_version then
  abort "Expected Ruby Version #{required_version}, was #{Gem.ruby_version}"
end

# We need to preserve the original ARGV to use for passing gem options
# to source gems.  If there is a -- in the line, strip all options after
# it...its for the source building process.
args = !ARGV.include?("--") ? ARGV.clone : ARGV[0...ARGV.index("--")]

begin
  Gem::GemRunner.new.run args
rescue Gem::SystemExitException => e
  exit e.exit_code
end

__END__
:endofruby
