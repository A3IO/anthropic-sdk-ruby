# typed: strong

module Anthropic
  module Models
    BetaResponseToolChangeMCPToolsetReference =
      Beta::BetaResponseToolChangeMCPToolsetReference

    module Beta
      class BetaResponseToolChangeMCPToolsetReference < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaResponseToolChangeMCPToolsetReference,
              Anthropic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :server_name

        sig { returns(Symbol) }
        attr_accessor :type

        # Reference to every tool in the named MCP server's toolset, as a `compaction`
        # block's `tool_changes` entry reports it. Send it back unchanged with the block.
        sig do
          params(server_name: String, type: Symbol).returns(T.attached_class)
        end
        def self.new(server_name:, type: :mcp_toolset_reference)
        end

        sig { override.returns({ server_name: String, type: Symbol }) }
        def to_hash
        end
      end
    end
  end
end
