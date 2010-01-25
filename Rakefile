require 'rake'

#
# Compile tasks
#

root = File.dirname(__FILE__)
dylib = File.join(root, "src/clips.bundle")

makefile = "src/Makefile"
source_files = Dir.glob("src/*.c")

file makefile => source_files do
  pkg = File.basename(dylib).chomp(File.extname(dylib))
  Dir.chdir("src") { sh("ruby extconf.rb") }
end

file dylib => makefile do
  Dir.chdir("src") { sh("make") }
end

desc "compile the clips binary"
task :compile => dylib
