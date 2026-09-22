# typed: strong

module Anthropic
  module Models
    BetaResponseToolRemovalBlock = Beta::BetaResponseToolRemovalBlock

    module Beta
      class BetaResponseToolRemovalBlock < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaResponseToolRemovalBlock,
              Anthropic::Internal::AnyHash
            )
          end

        # A reference to the withdrawn `tools` entry, MCP tool or MCP toolset.
        sig do
          returns(Anthropic::Beta::BetaResponseToolRemovalBlock::Tool::Variants)
        end
        attr_accessor :tool

        sig { returns(Symbol) }
        attr_accessor :type

        # An entry of a `compaction` block's `tool_changes`: a tool of the request's
        # `tools` (or an MCP tool or toolset) that the compacted range withdrew. Send it
        # back unchanged.
        sig do
          params(
            tool:
              T.any(
                Anthropic::Beta::BetaResponseToolChangeToolReference::OrHash,
                Anthropic::Beta::BetaResponseToolChangeMCPToolReference::OrHash,
                Anthropic::Beta::BetaResponseToolChangeMCPToolsetReference::OrHash
              ),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # A reference to the withdrawn `tools` entry, MCP tool or MCP toolset.
          tool:,
          type: :tool_removal
        )
        end

        sig do
          override.returns(
            {
              tool:
                Anthropic::Beta::BetaResponseToolRemovalBlock::Tool::Variants,
              type: Symbol
            }
          )
        end
        def to_hash
        end

        # A reference to the withdrawn `tools` entry, MCP tool or MCP toolset.
        module Tool
          extend Anthropic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Anthropic::Beta::BetaResponseToolChangeToolReference,
                Anthropic::Beta::BetaResponseToolChangeMCPToolReference,
                Anthropic::Beta::BetaResponseToolChangeMCPToolsetReference
              )
            end

          module Type
            extend Anthropic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Anthropic::Beta::BetaResponseToolRemovalBlock::Tool::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TOOL_REFERENCE =
              T.let(
                :tool_reference,
                Anthropic::Beta::BetaResponseToolRemovalBlock::Tool::Type::TaggedSymbol
              )
            MCP_TOOL_REFERENCE =
              T.let(
                :mcp_tool_reference,
                Anthropic::Beta::BetaResponseToolRemovalBlock::Tool::Type::TaggedSymbol
              )
            MCP_TOOLSET_REFERENCE =
              T.let(
                :mcp_toolset_reference,
                Anthropic::Beta::BetaResponseToolRemovalBlock::Tool::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Anthropic::Beta::BetaResponseToolRemovalBlock::Tool::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          sig do
            override.returns(
              T::Array[
                Anthropic::Beta::BetaResponseToolRemovalBlock::Tool::Variants
              ]
            )
          end
          def self.variants
          end

          # Creates a new instance of the variant class whose `type` matches the given
          # value, passing the remaining arguments to its constructor.
          sig do
            params(
              type:
                Anthropic::Beta::BetaResponseToolRemovalBlock::Tool::Type::OrSymbol,
              name: String,
              server_name: String
            ).returns(
              Anthropic::Beta::BetaResponseToolRemovalBlock::Tool::Variants
            )
          end
          def self.new(type:, name: nil, server_name: nil)
          end
        end
      end
    end
  end
end
