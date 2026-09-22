# typed: strong

module Anthropic
  module Models
    BetaRequestToolAdditionBlock = Beta::BetaRequestToolAdditionBlock

    module Beta
      class BetaRequestToolAdditionBlock < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaRequestToolAdditionBlock,
              Anthropic::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.any(
              Anthropic::Beta::BetaToolChangeToolReference,
              Anthropic::Beta::BetaToolChangeMCPToolReference,
              Anthropic::Beta::BetaToolChangeMCPToolsetReference,
              Anthropic::Beta::BetaToolChangeToolDefinitionParam
            )
          )
        end
        attr_accessor :tool

        sig { returns(Symbol) }
        attr_accessor :type

        # Create a cache control breakpoint at this content block.
        sig { returns(T.nilable(Anthropic::Beta::BetaCacheControlEphemeral)) }
        attr_reader :cache_control

        sig do
          params(
            cache_control:
              T.nilable(Anthropic::Beta::BetaCacheControlEphemeral::OrHash)
          ).void
        end
        attr_writer :cache_control

        # Mid-conversation directive to make a tool available.
        #
        # `tool` is a reference to a tool (or MCP toolset) declared in the request's
        # `tools`. Under the `inline-tools-2026-09-15` beta it may instead be a reference
        # to a tool defined earlier in `messages`, or a `tool_definition` object that
        # carries an inline tool definition in `definition` (the same object a `tools`
        # entry holds). An `mcp_toolset` definition also requires the
        # `mcp-client-2026-09-15` beta. The tool is offered to the model from this point
        # in the conversation onward.
        sig do
          params(
            tool:
              T.any(
                Anthropic::Beta::BetaToolChangeToolReference::OrHash,
                Anthropic::Beta::BetaToolChangeMCPToolReference::OrHash,
                Anthropic::Beta::BetaToolChangeMCPToolsetReference::OrHash,
                Anthropic::Beta::BetaToolChangeToolDefinitionParam::OrHash
              ),
            cache_control:
              T.nilable(Anthropic::Beta::BetaCacheControlEphemeral::OrHash),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          tool:,
          # Create a cache control breakpoint at this content block.
          cache_control: nil,
          type: :tool_addition
        )
        end

        sig do
          override.returns(
            {
              tool:
                T.any(
                  Anthropic::Beta::BetaToolChangeToolReference,
                  Anthropic::Beta::BetaToolChangeMCPToolReference,
                  Anthropic::Beta::BetaToolChangeMCPToolsetReference,
                  Anthropic::Beta::BetaToolChangeToolDefinitionParam
                ),
              type: Symbol,
              cache_control:
                T.nilable(Anthropic::Beta::BetaCacheControlEphemeral)
            }
          )
        end
        def to_hash
        end

        module Tool
          extend Anthropic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Anthropic::Beta::BetaToolChangeToolReference,
                Anthropic::Beta::BetaToolChangeMCPToolReference,
                Anthropic::Beta::BetaToolChangeMCPToolsetReference,
                Anthropic::Beta::BetaToolChangeToolDefinitionParam
              )
            end

          module Type
            extend Anthropic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Anthropic::Beta::BetaRequestToolAdditionBlock::Tool::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TOOL_REFERENCE =
              T.let(
                :tool_reference,
                Anthropic::Beta::BetaRequestToolAdditionBlock::Tool::Type::TaggedSymbol
              )
            MCP_TOOL_REFERENCE =
              T.let(
                :mcp_tool_reference,
                Anthropic::Beta::BetaRequestToolAdditionBlock::Tool::Type::TaggedSymbol
              )
            MCP_TOOLSET_REFERENCE =
              T.let(
                :mcp_toolset_reference,
                Anthropic::Beta::BetaRequestToolAdditionBlock::Tool::Type::TaggedSymbol
              )
            TOOL_DEFINITION =
              T.let(
                :tool_definition,
                Anthropic::Beta::BetaRequestToolAdditionBlock::Tool::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Anthropic::Beta::BetaRequestToolAdditionBlock::Tool::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          sig do
            override.returns(
              T::Array[
                Anthropic::Beta::BetaRequestToolAdditionBlock::Tool::Variants
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
                Anthropic::Beta::BetaRequestToolAdditionBlock::Tool::Type::OrSymbol,
              name: String,
              server_name: String,
              definition:
                T.any(
                  Anthropic::Beta::BetaTool::OrHash,
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
              Anthropic::Beta::BetaRequestToolAdditionBlock::Tool::Variants
            )
          end
          def self.new(type:, name: nil, server_name: nil, definition: nil)
          end
        end
      end
    end
  end
end
