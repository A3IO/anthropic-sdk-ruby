# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaToolChangeToolReference < Anthropic::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #
        #   @return [Symbol, :tool_reference]
        required :type, const: :tool_reference

        # @!method initialize(name:, type: :tool_reference)
        #   Reference to a single tool, by the name the model uses to call it: a tool
        #   declared in `tools` or defined by an earlier `tool_addition` block. Does not
        #   accept the composed `{server}_{name}` form the server assigns to MCP-resolved
        #   tools; use `mcp_tool_reference` or `mcp_toolset_reference` for those.
        #
        #   @param name [String]
        #   @param type [Symbol, :tool_reference]
      end
    end

    BetaToolChangeToolReference = Beta::BetaToolChangeToolReference
  end
end
