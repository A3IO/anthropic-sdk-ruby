# typed: strong

module Anthropic
  module Models
    BetaMCPToolParam = Beta::BetaMCPToolParam

    module Beta
      class BetaMCPToolParam < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaMCPToolParam,
              Anthropic::Internal::AnyHash
            )
          end

        # The tool's input schema as the MCP server lists it, verbatim.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :input_schema

        # The tool's name as the MCP server lists it (not prefixed with the server name).
        sig { returns(String) }
        attr_accessor :name

        # The tool's description as the MCP server lists it.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # A tool as an MCP server lists it: its name on that server, its description, and
        # its input schema.
        sig do
          params(
            input_schema: T::Hash[Symbol, T.anything],
            name: String,
            description: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The tool's input schema as the MCP server lists it, verbatim.
          input_schema:,
          # The tool's name as the MCP server lists it (not prefixed with the server name).
          name:,
          # The tool's description as the MCP server lists it.
          description: nil
        )
        end

        sig do
          override.returns(
            {
              input_schema: T::Hash[Symbol, T.anything],
              name: String,
              description: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
