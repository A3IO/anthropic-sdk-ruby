# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaResponseToolChangeToolReference < Anthropic::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #
        #   @return [Symbol, :tool_reference]
        required :type, const: :tool_reference

        # @!method initialize(name:, type: :tool_reference)
        #   Reference to a single tool, by the name the model uses to call it, as a
        #   `compaction` block's `tool_changes` entry reports it: a tool declared in `tools`
        #   or defined by an earlier `tool_addition` block. Send it back unchanged with the
        #   block.
        #
        #   @param name [String]
        #   @param type [Symbol, :tool_reference]
      end
    end

    BetaResponseToolChangeToolReference = Beta::BetaResponseToolChangeToolReference
  end
end
