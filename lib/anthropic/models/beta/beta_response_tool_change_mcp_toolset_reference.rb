# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaResponseToolChangeMCPToolsetReference < Anthropic::Internal::Type::BaseModel
        # @!attribute server_name
        #
        #   @return [String]
        required :server_name, String

        # @!attribute type
        #
        #   @return [Symbol, :mcp_toolset_reference]
        required :type, const: :mcp_toolset_reference

        # @!method initialize(server_name:, type: :mcp_toolset_reference)
        #   Reference to every tool in the named MCP server's toolset, as a `compaction`
        #   block's `tool_changes` entry reports it. Send it back unchanged with the block.
        #
        #   @param server_name [String]
        #   @param type [Symbol, :mcp_toolset_reference]
      end
    end

    BetaResponseToolChangeMCPToolsetReference = Beta::BetaResponseToolChangeMCPToolsetReference
  end
end
