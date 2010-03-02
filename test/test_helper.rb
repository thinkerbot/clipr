require "rubygems"
require "bundler"
Bundler.setup

# Filter warnings from bundled projects
module WarnFilter
  FILTER_PATHS = Gem.path + [Bundler.bundle_path.to_s]
  @@count = 0
  
  def write(obj)
    FILTER_PATHS.any? {|path| obj.rindex(path) == 0} ? @@count += 1 : super
  end

  unless ENV['WARN_FILTER'] == "false"
    $stderr.extend(self)
    at_exit do
      if @@count > 0
        $stderr.puts "(WarnFilter filtered #{@@count} warnings, set WARN_FILTER=false in ENV to see warnings)" 
      end
    end
  end
  
end unless Object.const_defined?(:WarnFilter)

require 'tap/test/unit'
