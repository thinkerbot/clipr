require 'test/unit'
require 'ffi'

class CallbackRegistrationTest < Test::Unit::TestCase
  module Clips
    extend FFI::Library
    
    root = File.dirname(__FILE__)
    ffi_lib File.join(root, "src/clips.bundle")

    callback :callback, [], :int
    attach_function :InitializeEnvironment, [], :void 
    attach_function :DefineFunction, [ :string, :char, :callback, :string ], :int
  end
  
  def test_callback_registers_correctly
    callback = lambda { 100 }
    
    Clips.InitializeEnvironment
    assert_equal 1, Clips.DefineFunction("callback", ?d, callback, "Callback")
  end
end