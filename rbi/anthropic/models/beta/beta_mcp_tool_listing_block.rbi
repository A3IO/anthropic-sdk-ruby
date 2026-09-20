# typed: strong

module Anthropic
  module Models
    BetaMCPToolListingBlock = Beta::BetaMCPToolListingBlock

    module Beta
      class BetaMCPToolListingBlock < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaMCPToolListingBlock,
              Anthropic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :mcp_server_name

        sig { returns(T::Array[Anthropic::Beta::BetaMCPTool]) }
        attr_accessor :tools

        sig { returns(Symbol) }
        attr_accessor :type

        # The tool listing the server fetched from an MCP server while producing this
        # response. Send the assistant message back unchanged, this block included, so
        # later requests use this listing instead of asking the MCP server again.
        sig do
          params(
            mcp_server_name: String,
            tools: T::Array[Anthropic::Beta::BetaMCPTool::OrHash],
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(mcp_server_name:, tools:, type: :mcp_tool_listing)
        end

        sig do
          override.returns(
            {
              mcp_server_name: String,
              tools: T::Array[Anthropic::Beta::BetaMCPTool],
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
