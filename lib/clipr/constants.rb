require 'rbconfig'

module Clipr
  
  # Adapted from FFI::Platform
  LIBSUFFIX = case Config::CONFIG['host_os'].downcase
  when /linux|freebsd|openbsd|sunos|solaris/
    'so'
  when /darwin/
    'bundle'
  when /win|mingw/
    'dll'
  else
    'so'
  end
  
  ROOT = File.expand_path("#{File.dirname(__FILE__)}/../..")
  DYLIB = File.join(ROOT, "src/clips.#{LIBSUFFIX}")
  
  # From constant.h
  GLOBAL_SAVE  = 0
  LOCAL_SAVE   = 1
  VISIBLE_SAVE = 2
end