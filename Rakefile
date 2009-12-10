require 'rake/clean'
require 'rake/tasklib'
require 'albacore'

NUNIT_EXE = "tools/Nunit/bin/net-2.0/nunit-console.exe"
SOLUTION_PATH = "." 
OUTPUT_PATH = "build"

CONFIG = ENV['CONFIG'] || "Debug"
ENVIRONMENT = ENV['ENVIRONMENT'] || "dev"
 
CLEAN.include(OUTPUT_PATH)

task :default => "build:all"
 
namespace :build do
  
  task :all => [:compile, :test]
      
  desc "Build solutions using MSBuild"
  msbuildtask :compile do |msb|
    msb.properties = {:configuration => CONFIG}
    msb.targets [:Clean, :Build]
    msb.solution = FileList["#{SOLUTION_PATH}/*.sln"]
  end
  
  desc "Generate config files for correct environment"
  expandtemplatestask :config do |template|
	  template.expand_files = {
            "config/app.template.config" => "src/placeholderapp/app.config"}
	  template.data_file = "config/environments/#{ENVIRONMENT}.yml"
  end


  desc "Runs tests with NUnit"
  nunittask :test=>[:compile] do |nunit|
    nunit.path_to_command = NUNIT_EXE
  	nunit.assemblies = FileList["#{OUTPUT_PATH}/tests/**/*.Tests.dll"]
  end

end

