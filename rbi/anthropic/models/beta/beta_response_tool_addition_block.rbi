# typed: strong

module Anthropic
  module Models
    BetaResponseToolAdditionBlock = Beta::BetaResponseToolAdditionBlock

    module Beta
      class BetaResponseToolAdditionBlock < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaResponseToolAdditionBlock,
              Anthropic::Internal::AnyHash
            )
          end

        # The tool made available: a reference to a `tools` entry or MCP toolset, or a
        # `tool_definition` carrying the definition by value.
        sig do
          returns(
            Anthropic::Beta::BetaResponseToolAdditionBlock::Tool::Variants
          )
        end
        attr_accessor :tool

        sig { returns(Symbol) }
        attr_accessor :type

        # An entry of a `compaction` block's `tool_changes`: a tool the compacted range
        # made available, as a reference to a `tools` entry or MCP toolset, or as the tool
        # definition in effect at the end of the range, by value. Send it back unchanged.
        sig do
          params(
            tool:
              T.any(
                Anthropic::Beta::BetaResponseToolChangeToolReference::OrHash,
                Anthropic::Beta::BetaResponseToolChangeMCPToolReference::OrHash,
                Anthropic::Beta::BetaResponseToolChangeMCPToolsetReference::OrHash,
                Anthropic::Beta::BetaToolChangeToolDefinition::OrHash
              ),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The tool made available: a reference to a `tools` entry or MCP toolset, or a
          # `tool_definition` carrying the definition by value.
          tool:,
          type: :tool_addition
        )
        end

        sig do
          override.returns(
            {
              tool:
                Anthropic::Beta::BetaResponseToolAdditionBlock::Tool::Variants,
              type: Symbol
            }
          )
        end
        def to_hash
        end

        # The tool made available: a reference to a `tools` entry or MCP toolset, or a
        # `tool_definition` carrying the definition by value.
        module Tool
          extend Anthropic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Anthropic::Beta::BetaResponseToolChangeToolReference,
                Anthropic::Beta::BetaResponseToolChangeMCPToolReference,
                Anthropic::Beta::BetaResponseToolChangeMCPToolsetReference,
                Anthropic::Beta::BetaToolChangeToolDefinition
              )
            end

          module Type
            extend Anthropic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Anthropic::Beta::BetaResponseToolAdditionBlock::Tool::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TOOL_REFERENCE =
              T.let(
                :tool_reference,
                Anthropic::Beta::BetaResponseToolAdditionBlock::Tool::Type::TaggedSymbol
              )
            MCP_TOOL_REFERENCE =
              T.let(
                :mcp_tool_reference,
                Anthropic::Beta::BetaResponseToolAdditionBlock::Tool::Type::TaggedSymbol
              )
            MCP_TOOLSET_REFERENCE =
              T.let(
                :mcp_toolset_reference,
                Anthropic::Beta::BetaResponseToolAdditionBlock::Tool::Type::TaggedSymbol
              )
            TOOL_DEFINITION =
              T.let(
                :tool_definition,
                Anthropic::Beta::BetaResponseToolAdditionBlock::Tool::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Anthropic::Beta::BetaResponseToolAdditionBlock::Tool::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          sig do
            override.returns(
              T::Array[
                Anthropic::Beta::BetaResponseToolAdditionBlock::Tool::Variants
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
                Anthropic::Beta::BetaResponseToolAdditionBlock::Tool::Type::OrSymbol,
              name: String,
              server_name: String,
              definition:
                T.any(
                  Anthropic::Beta::BetaResponseTool::OrHash,
                  Anthropic::Beta::BetaToolBash20241022::OrHash,
                  Anthropic::Beta::BetaToolBash20250124::OrHash,
                  Anthropic::Beta::BetaCodeExecutionTool20250522::OrHash,
                  Anthropic::Beta::BetaCodeExecutionTool20250825::OrHash,
                  Anthropic::Beta::BetaCodeExecutionTool20260120::OrHash,
                  Anthropic::Beta::BetaCodeExecutionTool20260521::OrHash,
                  Anthropic::Beta::BetaBrowserToolset20260801::OrHash,
                  Anthropic::Beta::BetaToolComputerUse20241022::OrHash,
                  Anthropic::Beta::BetaMemoryTool20250818::OrHash,
                  Anthropic::Beta::BetaToolComputerUse20250124::OrHash,
                  Anthropic::Beta::BetaToolTextEditor20241022::OrHash,
                  Anthropic::Beta::BetaToolComputerUse20251124::OrHash,
                  Anthropic::Beta::BetaComputerToolset20260801::OrHash,
                  Anthropic::Beta::BetaToolTextEditor20250124::OrHash,
                  Anthropic::Beta::BetaToolTextEditor20250429::OrHash,
                  Anthropic::Beta::BetaToolTextEditor20250728::OrHash,
                  Anthropic::Beta::BetaWebSearchTool20250305::OrHash,
                  Anthropic::Beta::BetaWebFetchTool20250910::OrHash,
                  Anthropic::Beta::BetaWebSearchTool20260209::OrHash,
                  Anthropic::Beta::BetaWebFetchTool20260209::OrHash,
                  Anthropic::Beta::BetaWebFetchTool20260309::OrHash,
                  Anthropic::Beta::BetaWebSearchTool20260318::OrHash,
                  Anthropic::Beta::BetaWebFetchTool20260318::OrHash,
                  Anthropic::Beta::BetaAdvisorTool20260301::OrHash,
                  Anthropic::Beta::BetaToolSearchToolBm25_20251119::OrHash,
                  Anthropic::Beta::BetaToolSearchToolRegex20251119::OrHash,
                  Anthropic::Beta::BetaMCPToolset::OrHash
                )
            ).returns(
              Anthropic::Beta::BetaResponseToolAdditionBlock::Tool::Variants
            )
          end
          def self.new(type:, name: nil, server_name: nil, definition: nil)
          end
        end
      end
    end
  end
end
