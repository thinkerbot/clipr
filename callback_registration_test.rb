require 'test/unit'
require 'ffi'

class CallbackRegistrationTest < Test::Unit::TestCase
  module Clips
    extend FFI::Library
    
    root = File.dirname(__FILE__)
    ffi_lib File.join(root, "src/clips.bundle")

    callback :my_callback, [], :int
    attach_function :InitializeEnvironment, [], :void 
    attach_function :DefineFunction, [ :string, :char, :my_callback, :string ], :int
  end
  
  def test_callback_registers_correctly
    callback = lambda {}
    
    Clips.InitializeEnvironment
    assert_equal 1, Clips.DefineFunction("callback", ?d, callback, "Callback")
  end
end
