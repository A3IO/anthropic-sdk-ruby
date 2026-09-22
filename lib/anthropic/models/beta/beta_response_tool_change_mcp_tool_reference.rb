# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaResponseToolChangeMCPToolReference < Anthropic::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute server_name
        #
        #   @return [String]
        required :server_name, String

        # @!attribute type
        #
        #   @return [Symbol, :mcp_tool_reference]
        required :type, const: :mcp_tool_reference

        # @!method initialize(name:, server_name:, type: :mcp_tool_reference)
        #   Reference to a single MCP tool, by its server and its name on that server, as a
        #   `compaction` block's `tool_changes` entry reports it. Send it back unchanged
        #   with the block.
        #
        #   @param name [String]
        #   @param server_name [String]
        #   @param type [Symbol, :mcp_tool_reference]
      end
    end

    BetaResponseToolChangeMCPToolReference = Beta::BetaResponseToolChangeMCPToolReference
  end
end
