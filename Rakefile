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
  
  task :all => [:clean, :compile, :config, :test]
      
  desc "Build solutions using MSBuild"
  msbuildtask :compile do |msb|
    msb.properties = {:configuration => CONFIG}
    msb.targets [:Clean, :Build]
    msb.solution = FileList["#{SOLUTION_PATH}/*.sln"]
  end
  
  desc "Generate app and web config files for correct environment"
  task :config do
    ["app", "web"].each do |config_type|
      FileList["src/**/#{config_type}.config"].each do |file|
        e = ExpandTemplates.new
        e.data_file = "config/environments/#{ENVIRONMENT}.yml"
        e.expand_files = {"config/#{config_type}.template.config" => file }
        e.expand
      end
    end
  end

  desc "Runs tests with NUnit"
  nunittask :test=>[:compile] do |nunit|
    nunit.path_to_command = NUNIT_EXE
  	nunit.assemblies = FileList["#{OUTPUT_PATH}/tests/**/*.Tests.dll"]
    nunit.options << "/xml=#{OUTPUT_PATH}/TestResults.xml" << "/nologo"
  end

end

