module Clipr
  module Api
    # Environment Documentation
    module Environment
      extend FFI::Library
      ffi_lib DYLIB
      
      # attach_function :EnvAddClearFunction, [:pointer], :void 
      # attach_function :EnvAddPeriodicFunction, [:pointer], :void 
      # attach_function :EnvAddResetFunction, [:pointer], :void 
      # attach_function :EnvBatchStar, [:pointer], :void 
      # attach_function :EnvBload, [:pointer], :void 
      # attach_function :EnvBsave, [:pointer], :void 
      attach_function :EnvBuild, [:pointer, :string], :int 
      attach_function :EnvClear, [:pointer], :void 
      # attach_function :EnvEval, [:pointer], :void 
      attach_function :EnvFunctionCall, [:pointer, :string, :string, :pointer], :int 
      # attach_function :EnvGetAutoFloatDividend, [:pointer], :void 
      # attach_function :EnvGetDynamicConstraintChecking, [:pointer], :void 
      # attach_function :EnvGetSequenceOperatorRecognition, [:pointer], :void 
      # attach_function :EnvGetStaticConstraintChecking, [:pointer], :void 
      # attach_function :InitializeEnvironment, [], :void 
      attach_function :EnvLoad, [:pointer, :string], :int
      # attach_function :EnvRemoveClearFunction, [:pointer], :void 
      # attach_function :EnvRemovePeriodicFunction, [:pointer], :void 
      # attach_function :EnvRemoveResetFunction, [:pointer], :void 
      attach_function :EnvReset, [:pointer], :void 
      attach_function :EnvSave, [:pointer, :string], :int
      # attach_function :EnvSetAutoFloatDividend, [:pointer], :void 
      # attach_function :EnvSetDynamicConstraintChecking, [:pointer], :void 
      # attach_function :EnvSetSequenceOperator, [:pointer], :void 
      # attach_function :EnvSetStaticConstraintChecking, [:pointer], :void 
      
      # attach_function :AddEnvironmentCleanupFunction, [:pointer], :void 
      # attach_function :AllocateEnvironmentData, [:pointer], :void 
      attach_function :CreateEnvironment, [], :pointer
      # attach_function :DeallocateEnvironmentData, [:pointer], :void 
      attach_function :DestroyEnvironment, [:pointer], :bool
      # attach_function :GetCurrentEnvironment, [:pointer], :void 
      attach_function :GetEnvironmentByIndex, [:int], :pointer 
      # attach_function :GetEnvironmentData, [:pointer, :uint], :pointer 
      attach_function :GetEnvironmentIndex, [:pointer], :int 
      # attach_function :SetCurrentEnvironment, [:pointer], :void 
      # attach_function :SetCurrentEnvironmentByIndex, [:pointer], :void
      
      # see symbol.h
      attach_function :EnvAddSymbol, [:pointer, :string], :pointer
      attach_function :EnvAddLong,   [:pointer, :long_long], :pointer
      attach_function :EnvAddDouble, [:pointer, :double], :pointer
    end
  end
end