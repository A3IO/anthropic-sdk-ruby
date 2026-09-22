# typed: strong

module Anthropic
  module Models
    BetaMCPToolListingBlockParam = Beta::BetaMCPToolListingBlockParam

    module Beta
      class BetaMCPToolListingBlockParam < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaMCPToolListingBlockParam,
              Anthropic::Internal::AnyHash
            )
          end

        # The name of the MCP server this listing came from, as `mcp_servers` declares it.
        sig { returns(String) }
        attr_accessor :mcp_server_name

        # The server's tools, exactly as the response listed them.
        sig { returns(T::Array[Anthropic::Beta::BetaMCPToolParam]) }
        attr_accessor :tools

        sig { returns(Symbol) }
        attr_accessor :type

        # The tool listing an MCP server returned while an earlier response was produced,
        # as that response carried it. Send the assistant message back unchanged, this
        # block included, and the server uses this listing for the matching `mcp_toolset`
        # instead of asking the MCP server again.
        sig do
          params(
            mcp_server_name: String,
            tools: T::Array[Anthropic::Beta::BetaMCPToolParam::OrHash],
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the MCP server this listing came from, as `mcp_servers` declares it.
          mcp_server_name:,
          # The server's tools, exactly as the response listed them.
          tools:,
          type: :mcp_tool_listing
        )
        end

        sig do
          override.returns(
            {
              mcp_server_name: String,
              tools: T::Array[Anthropic::Beta::BetaMCPToolParam],
              type: Symbol
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
