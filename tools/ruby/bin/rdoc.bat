@echo off
@if not "%~d0" == "~d0" goto WinNT
C:\lan\ruby-1.9.1-p129\bin\ruby -x "C:/lan/ruby-1.9.1-p129/bin/rdoc.bat" %1 %2 %3 %4 %5 %6 %7 %8 %9
@goto endofruby
:WinNT
"%~dp0ruby" -x "%~f0" %*
@goto endofruby
#!C:/lan/ruby-1.9.1-p129/bin/ruby
#
#  RDoc: Documentation tool for source code
#        (see lib/rdoc/rdoc.rb for more information)
#
#  Copyright (c) 2003 Dave Thomas
#  Released under the same terms as Ruby
#
#  $Revision: 15033 $

require 'rdoc/rdoc'

begin
  r = RDoc::RDoc.new
  r.document ARGV
rescue Interrupt
  $stderr.puts
  $stderr.puts "Interrupted"
rescue RDoc::Error => e
  $stderr.puts e.message
  exit 1
end
__END__
:endofruby
