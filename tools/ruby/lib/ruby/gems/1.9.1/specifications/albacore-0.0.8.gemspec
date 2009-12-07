# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{albacore}
  s.version = "0.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Derick Bailey", "Ben Hall", "Steven Harman"]
  s.date = %q{2009-12-03}
  s.description = %q{Easily build your .NET solutions with rake, using this suite of rake tasks.}
  s.email = %q{derickbailey@gmail.com}
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["EULA.txt", "README.markdown", "VERSION", "install_dependencies.rb", "lib/albacore.rb", "lib/albacore/assemblyinfo.rb", "lib/albacore/command.rb", "lib/albacore/expandtemplates.rb", "lib/albacore/msbuild.rb", "lib/albacore/mspectestrunner.rb", "lib/albacore/ncoverconsole.rb", "lib/albacore/ncoverreport.rb", "lib/albacore/ncoverreports/assemblyfilter.rb", "lib/albacore/ncoverreports/branchcoverage.rb", "lib/albacore/ncoverreports/classfilter.rb", "lib/albacore/ncoverreports/codecoveragebase.rb", "lib/albacore/ncoverreports/cyclomaticcomplexity.rb", "lib/albacore/ncoverreports/documentfilter.rb", "lib/albacore/ncoverreports/fullcoveragereport.rb", "lib/albacore/ncoverreports/methodcoverage.rb", "lib/albacore/ncoverreports/methodfilter.rb", "lib/albacore/ncoverreports/namespacefilter.rb", "lib/albacore/ncoverreports/reportfilterbase.rb", "lib/albacore/ncoverreports/summaryreport.rb", "lib/albacore/ncoverreports/symbolcoverage.rb", "lib/albacore/nunittestrunner.rb", "lib/albacore/sftp.rb", "lib/albacore/sqlcmd.rb", "lib/albacore/ssh.rb", "lib/albacore/support/albacore_helper.rb", "lib/albacore/support/failure.rb", "lib/albacore/support/logging.rb", "lib/albacore/support/runcommand.rb", "lib/albacore/support/yamlconfig.rb", "lib/albacore/xunittestrunner.rb", "lib/albacore/zipdirectory.rb", "lib/rake/assemblyinfotask.rb", "lib/rake/commandtask.rb", "lib/rake/expandtemplatestask.rb", "lib/rake/msbuildtask.rb", "lib/rake/mspectask.rb", "lib/rake/ncoverconsoletask.rb", "lib/rake/ncoverreporttask.rb", "lib/rake/nunittask.rb", "lib/rake/renametask.rb", "lib/rake/sftptask.rb", "lib/rake/sqlcmdtask.rb", "lib/rake/sshtask.rb", "lib/rake/support/albacoretask.rb", "lib/rake/xunittask.rb", "lib/rake/ziptask.rb", "rakefile.rb", "spec/assemblyinfo_spec.rb", "spec/assemblyinfotask_spec.rb", "spec/command_spec.rb", "spec/commandtask_spec.rb", "spec/expandtemplates_spec.rb", "spec/expandtemplatestask_spec.rb", "spec/msbuild_spec.rb", "spec/msbuildtask_spec.rb", "spec/mspectask_spec.rb", "spec/ncoverconsole_spec.rb", "spec/ncoverconsoletask_spec.rb", "spec/ncoverreport_spec.rb", "spec/ncoverreporttask_spec.rb", "spec/nunittask_spec.rb", "spec/nunittestrunner_spec.rb", "spec/patches/system_patch.rb", "spec/patches/tasklib_patch.rb", "spec/renametask_spec.rb", "spec/sftp_spec.rb", "spec/sftptask_spec.rb", "spec/sqlcmd_spec.rb", "spec/sqlcmdtask_spec.rb", "spec/ssh_spec.rb", "spec/sshtask_spec.rb", "spec/support/AssemblyInfo/assemblyinfo.yml", "spec/support/CodeCoverage/mspec/assemblies/Machine.Specifications.NUnit.dll", "spec/support/CodeCoverage/mspec/assemblies/Machine.Specifications.dll", "spec/support/CodeCoverage/mspec/assemblies/TestSolution.MSpecTests.dll", "spec/support/CodeCoverage/mspec/assemblies/TestSolution.dll", "spec/support/CodeCoverage/mspec/assemblies/nunit.framework.dll", "spec/support/CodeCoverage/nunit/assemblies/TestSolution.Tests.dll", "spec/support/CodeCoverage/nunit/assemblies/TestSolution.dll", "spec/support/CodeCoverage/nunit/assemblies/nunit.framework.dll", "spec/support/CodeCoverage/nunit/failing_assemblies/TestSolution.FailingTests.dll", "spec/support/CodeCoverage/nunit/failing_assemblies/nunit.framework.dll", "spec/support/CodeCoverage/report/coverage.xml", "spec/support/CodeCoverage/xunit/assemblies/TestSolution.XUnitTests.dll", "spec/support/CodeCoverage/xunit/assemblies/TestSolution.dll", "spec/support/CodeCoverage/xunit/assemblies/xunit.dll", "spec/support/CodeCoverage/xunit/assemblies/xunit.xml", "spec/support/TestSolution/TestSolution.FailingTests/FailingTestFixture.cs", "spec/support/TestSolution/TestSolution.FailingTests/Properties/AssemblyInfo.cs", "spec/support/TestSolution/TestSolution.FailingTests/TestSolution.FailingTests.csproj", "spec/support/TestSolution/TestSolution.MSpecTests/Properties/AssemblyInfo.cs", "spec/support/TestSolution/TestSolution.MSpecTests/SomeSpecTest.cs", "spec/support/TestSolution/TestSolution.MSpecTests/TestSolution.MSpecTests.csproj", "spec/support/TestSolution/TestSolution.Tests/Properties/AssemblyInfo.cs", "spec/support/TestSolution/TestSolution.Tests/SomeTestFixture.cs", "spec/support/TestSolution/TestSolution.Tests/TestSolution.Tests.csproj", "spec/support/TestSolution/TestSolution.XUnitTests/Class1.cs", "spec/support/TestSolution/TestSolution.XUnitTests/Properties/AssemblyInfo.cs", "spec/support/TestSolution/TestSolution.XUnitTests/TestSolution.XUnitTests.csproj", "spec/support/TestSolution/TestSolution.sln", "spec/support/TestSolution/TestSolution/Class1.cs", "spec/support/TestSolution/TestSolution/Properties/AssemblyInfo.cs", "spec/support/TestSolution/TestSolution/TestSolution.csproj", "spec/support/assemblyinfotester.rb", "spec/support/expandtemplates/datafiles/multiplevalues.yml", "spec/support/expandtemplates/datafiles/multitemplate-specificfile.yml", "spec/support/expandtemplates/datafiles/multitemplate.yml", "spec/support/expandtemplates/datafiles/sample.yml", "spec/support/expandtemplates/datafiles/sample_with_include.yml", "spec/support/expandtemplates/datafiles/template_specific_data_file_with_include.yml", "spec/support/expandtemplates/datafiles/template_specific_include.yml", "spec/support/expandtemplates/templates/multipleinstance.config", "spec/support/expandtemplates/templates/multiplevalues.config", "spec/support/expandtemplates/templates/sample.config", "spec/support/expandtemplatestestdata.rb", "spec/support/msbuildtestdata.rb", "spec/support/ncoverreporttestdata.rb", "spec/support/spec_helper.rb", "spec/support/test.yml", "spec/support/zip/files/subfolder/sub file.txt", "spec/support/zip/files/testfile.txt", "spec/support/ziptestdata.rb", "spec/xunittask_spec.rb", "spec/yamlconfig_spec.rb", "spec/zip_spec.rb", "spec/ziptask_spec.rb", "yaml_autoconfig_test.yml"]
  s.has_rdoc = true
  s.homepage = %q{http://albacorebuild.net}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A Suite of Rake Build Tasks For .Net Solutions}
  s.test_files = ["spec/assemblyinfotask_spec.rb", "spec/assemblyinfo_spec.rb", "spec/commandtask_spec.rb", "spec/command_spec.rb", "spec/expandtemplatestask_spec.rb", "spec/expandtemplates_spec.rb", "spec/msbuildtask_spec.rb", "spec/msbuild_spec.rb", "spec/mspectask_spec.rb", "spec/ncoverconsoletask_spec.rb", "spec/ncoverconsole_spec.rb", "spec/ncoverreporttask_spec.rb", "spec/ncoverreport_spec.rb", "spec/nunittask_spec.rb", "spec/nunittestrunner_spec.rb", "spec/patches/system_patch.rb", "spec/patches/tasklib_patch.rb", "spec/renametask_spec.rb", "spec/sftptask_spec.rb", "spec/sftp_spec.rb", "spec/sqlcmdtask_spec.rb", "spec/sqlcmd_spec.rb", "spec/sshtask_spec.rb", "spec/ssh_spec.rb", "spec/support/assemblyinfotester.rb", "spec/support/expandtemplatestestdata.rb", "spec/support/msbuildtestdata.rb", "spec/support/ncoverreporttestdata.rb", "spec/support/spec_helper.rb", "spec/support/ziptestdata.rb", "spec/xunittask_spec.rb", "spec/yamlconfig_spec.rb", "spec/ziptask_spec.rb", "spec/zip_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, [">= 0.8.7"])
      s.add_runtime_dependency(%q<net-ssh>, [">= 2.0.15"])
      s.add_runtime_dependency(%q<net-sftp>, [">= 2.0.2"])
      s.add_runtime_dependency(%q<rubyzip>, [">= 0.9.1"])
      s.add_development_dependency(%q<rspec>, [">= 1.2.8"])
      s.add_development_dependency(%q<jeweler>, [">= 1.2.1"])
      s.add_development_dependency(%q<derickbailey-notamock>, [">= 0.0.1"])
      s.add_development_dependency(%q<jekyll>, [">= 0.5.4"])
    else
      s.add_dependency(%q<rake>, [">= 0.8.7"])
      s.add_dependency(%q<net-ssh>, [">= 2.0.15"])
      s.add_dependency(%q<net-sftp>, [">= 2.0.2"])
      s.add_dependency(%q<rubyzip>, [">= 0.9.1"])
      s.add_dependency(%q<rspec>, [">= 1.2.8"])
      s.add_dependency(%q<jeweler>, [">= 1.2.1"])
      s.add_dependency(%q<derickbailey-notamock>, [">= 0.0.1"])
      s.add_dependency(%q<jekyll>, [">= 0.5.4"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0.8.7"])
    s.add_dependency(%q<net-ssh>, [">= 2.0.15"])
    s.add_dependency(%q<net-sftp>, [">= 2.0.2"])
    s.add_dependency(%q<rubyzip>, [">= 0.9.1"])
    s.add_dependency(%q<rspec>, [">= 1.2.8"])
    s.add_dependency(%q<jeweler>, [">= 1.2.1"])
    s.add_dependency(%q<derickbailey-notamock>, [">= 0.0.1"])
    s.add_dependency(%q<jekyll>, [">= 0.5.4"])
  end
end
