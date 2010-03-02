#############################################################################
# Normally you should specify dependencies through the gemspec rather than
# editing this file, ie:
#   
#   Gem::Specification.new do |s|
#     ... 
#     s.add_dependency("rack")
#     s.add_development_dependency("rack-test")
#   end
#
#############################################################################

project_dir = File.expand_path('..', __FILE__)
gemspec_path = File.expand_path('clipr.gemspec', project_dir)

#
# Setup gemspec dependencies
#

gemspec = eval(File.read(gemspec_path))
gemspec.dependencies.each do |dep|
  group = dep.type == :development ? :development : :default
  gem dep.name, dep.version_requirements, :group => group
end
gem(gemspec.name, gemspec.version, :path => project_dir)

#
# Setup sources
#

source :gemcutter
