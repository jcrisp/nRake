require 'rake/clean'

DOT_NET_PATH = "#{ENV["SystemRoot"]}/Microsoft.NET/Framework/v3.5"
NUNIT_EXE = "tools/Nunit/bin/net-2.0/nunit-console.exe"
SOLUTION_PATH = "." 
OUTPUT_PATH = "build"
CONFIG = ENV['CONFIG'] || "Debug"
 
CLEAN.include(OUTPUT_PATH)

task :default => "build:all"
 
namespace :build do
  
  task :all => [:compile, :test]
      
  desc "Build solutions using MSBuild"
  task :compile => [:clean] do
    solutions = FileList["#{SOLUTION_PATH}/*.sln"]
    solutions.each do |solution|
      sh "#{DOT_NET_PATH}/msbuild.exe /p:Configuration=#{CONFIG} #{solution}"
    end
  end
   
  desc "Runs tests with NUnit"
  task :test => [:compile] do
    tests = FileList["#{OUTPUT_PATH}/tests/**/*.Tests.dll"]
    sh "#{NUNIT_EXE} #{tests} /nologo /xml=#{OUTPUT_PATH}/TestResults.xml"
  end
  
end

