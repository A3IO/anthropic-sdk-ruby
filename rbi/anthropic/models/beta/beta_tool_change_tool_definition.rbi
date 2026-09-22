# typed: strong

module Anthropic
  module Models
    BetaToolChangeToolDefinition = Beta::BetaToolChangeToolDefinition

    module Beta
      class BetaToolChangeToolDefinition < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaToolChangeToolDefinition,
              Anthropic::Internal::AnyHash
            )
          end

        sig { returns(Anthropic::Beta::BetaResponseToolUnion::Variants) }
        attr_accessor :definition

        sig { returns(Symbol) }
        attr_accessor :type

        # A tool defined by value, as a `compaction` block's `tool_changes` entry reports
        # it: `definition` is the tool's definition as it was sent, in the form of a
        # `tools` entry, without `cache_control`. Send it back unchanged with the block.
        sig do
          params(
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
              ),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(definition:, type: :tool_definition)
        end

        sig do
          override.returns(
            {
              definition: Anthropic::Beta::BetaResponseToolUnion::Variants,
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
