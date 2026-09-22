# typed: strong

module Anthropic
  module Models
    BetaMCPTool = Beta::BetaMCPTool

    module Beta
      class BetaMCPTool < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Anthropic::Beta::BetaMCPTool, Anthropic::Internal::AnyHash)
          end

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :input_schema

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # A tool as an MCP server lists it: its name on that server, its description, and
        # its input schema.
        sig do
          params(
            input_schema: T::Hash[Symbol, T.anything],
            name: String,
            description: String
          ).returns(T.attached_class)
        end
        def self.new(input_schema:, name:, description: nil)
        end

        sig do
          override.returns(
            {
              input_schema: T::Hash[Symbol, T.anything],
              name: String,
              description: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
