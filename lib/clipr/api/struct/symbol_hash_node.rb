# This file is generated by rake. Do not edit.

module Clipr
  module Api
    module Struct
      # /************************************************************/
      # /* symbolHashNode STRUCTURE:                                */
      # /************************************************************/
      # struct symbolHashNode
      #   {
      #    struct symbolHashNode *next;
      #    long count;
      #    int depth;
      #    unsigned int permanent : 1;
      #    unsigned int markedEphemeral : 1;
      #    unsigned int neededSymbol : 1;
      #    unsigned int bucket : 29;
      #    char *contents;
      #   };
      #
      class SymbolHashNode < FFI::Struct
        layout :next, :pointer, 0,
               :count, :long, 4,
               :depth, :int, 8,
               :contents, :string, 16










      end
    end
  end
end
