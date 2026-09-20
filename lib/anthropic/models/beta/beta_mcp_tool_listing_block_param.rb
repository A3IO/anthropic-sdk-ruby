# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaMCPToolListingBlockParam < Anthropic::Internal::Type::BaseModel
        # @!attribute mcp_server_name
        #   The name of the MCP server this listing came from, as `mcp_servers` declares it.
        #
        #   @return [String]
        required :mcp_server_name, String

        # @!attribute tools
        #   The server's tools, exactly as the response listed them.
        #
        #   @return [Array<Anthropic::Models::Beta::BetaMCPToolParam>]
        required :tools, -> { Anthropic::Internal::Type::ArrayOf[Anthropic::Beta::BetaMCPToolParam] }

        # @!attribute type
        #
        #   @return [Symbol, :mcp_tool_listing]
        required :type, const: :mcp_tool_listing

        # @!method initialize(mcp_server_name:, tools:, type: :mcp_tool_listing)
        #   The tool listing an MCP server returned while an earlier response was produced,
        #   as that response carried it. Send the assistant message back unchanged, this
        #   block included, and the server uses this listing for the matching `mcp_toolset`
        #   instead of asking the MCP server again.
        #
        #   Some parameter documentations has been truncated, see
        #   {Anthropic::Models::Beta::BetaMCPToolListingBlockParam} for more details.
        #
        #   @param mcp_server_name [String] The name of the MCP server this listing came from, as `mcp_servers` declares it.
        #
        #   @param tools [Array<Anthropic::Models::Beta::BetaMCPToolParam>] The server's tools, exactly as the response listed them.
        #
        #   @param type [Symbol, :mcp_tool_listing]
      end
    end

    BetaMCPToolListingBlockParam = Beta::BetaMCPToolListingBlockParam
  end
end
