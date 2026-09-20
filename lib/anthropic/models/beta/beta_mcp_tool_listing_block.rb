# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaMCPToolListingBlock < Anthropic::Internal::Type::BaseModel
        # @!attribute mcp_server_name
        #
        #   @return [String]
        required :mcp_server_name, String

        # @!attribute tools
        #
        #   @return [Array<Anthropic::Models::Beta::BetaMCPTool>]
        required :tools, -> { Anthropic::Internal::Type::ArrayOf[Anthropic::Beta::BetaMCPTool] }

        # @!attribute type
        #
        #   @return [Symbol, :mcp_tool_listing]
        required :type, const: :mcp_tool_listing

        # @!method initialize(mcp_server_name:, tools:, type: :mcp_tool_listing)
        #   The tool listing the server fetched from an MCP server while producing this
        #   response. Send the assistant message back unchanged, this block included, so
        #   later requests use this listing instead of asking the MCP server again.
        #
        #   @param mcp_server_name [String]
        #   @param tools [Array<Anthropic::Models::Beta::BetaMCPTool>]
        #   @param type [Symbol, :mcp_tool_listing]
      end
    end

    BetaMCPToolListingBlock = Beta::BetaMCPToolListingBlock
  end
end
