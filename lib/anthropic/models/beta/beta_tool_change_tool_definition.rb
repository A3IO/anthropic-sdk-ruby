# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaToolChangeToolDefinition < Anthropic::Internal::Type::BaseModel
        # @!attribute definition
        #
        #   @return [Anthropic::Models::Beta::BetaResponseTool, Anthropic::Models::Beta::BetaToolBash20241022, Anthropic::Models::Beta::BetaToolBash20250124, Anthropic::Models::Beta::BetaCodeExecutionTool20250522, Anthropic::Models::Beta::BetaCodeExecutionTool20250825, Anthropic::Models::Beta::BetaCodeExecutionTool20260120, Anthropic::Models::Beta::BetaCodeExecutionTool20260521, Anthropic::Models::Beta::BetaBrowserToolset20260801, Anthropic::Models::Beta::BetaToolComputerUse20241022, Anthropic::Models::Beta::BetaMemoryTool20250818, Anthropic::Models::Beta::BetaToolComputerUse20250124, Anthropic::Models::Beta::BetaToolTextEditor20241022, Anthropic::Models::Beta::BetaToolComputerUse20251124, Anthropic::Models::Beta::BetaComputerToolset20260801, Anthropic::Models::Beta::BetaToolTextEditor20250124, Anthropic::Models::Beta::BetaToolTextEditor20250429, Anthropic::Models::Beta::BetaToolTextEditor20250728, Anthropic::Models::Beta::BetaWebSearchTool20250305, Anthropic::Models::Beta::BetaWebFetchTool20250910, Anthropic::Models::Beta::BetaWebSearchTool20260209, Anthropic::Models::Beta::BetaWebFetchTool20260209, Anthropic::Models::Beta::BetaWebFetchTool20260309, Anthropic::Models::Beta::BetaWebSearchTool20260318, Anthropic::Models::Beta::BetaWebFetchTool20260318, Anthropic::Models::Beta::BetaAdvisorTool20260301, Anthropic::Models::Beta::BetaToolSearchToolBm25_20251119, Anthropic::Models::Beta::BetaToolSearchToolRegex20251119, Anthropic::Models::Beta::BetaMCPToolset]
        required :definition, union: -> { Anthropic::Beta::BetaResponseToolUnion }

        # @!attribute type
        #
        #   @return [Symbol, :tool_definition]
        required :type, const: :tool_definition

        # @!method initialize(definition:, type: :tool_definition)
        #   A tool defined by value, as a `compaction` block's `tool_changes` entry reports
        #   it: `definition` is the tool's definition as it was sent, in the form of a
        #   `tools` entry, without `cache_control`. Send it back unchanged with the block.
        #
        #   @param definition [Anthropic::Models::Beta::BetaResponseTool, Anthropic::Models::Beta::BetaToolBash20241022, Anthropic::Models::Beta::BetaToolBash20250124, Anthropic::Models::Beta::BetaCodeExecutionTool20250522, Anthropic::Models::Beta::BetaCodeExecutionTool20250825, Anthropic::Models::Beta::BetaCodeExecutionTool20260120, Anthropic::Models::Beta::BetaCodeExecutionTool20260521, Anthropic::Models::Beta::BetaBrowserToolset20260801, Anthropic::Models::Beta::BetaToolComputerUse20241022, Anthropic::Models::Beta::BetaMemoryTool20250818, Anthropic::Models::Beta::BetaToolComputerUse20250124, Anthropic::Models::Beta::BetaToolTextEditor20241022, Anthropic::Models::Beta::BetaToolComputerUse20251124, Anthropic::Models::Beta::BetaComputerToolset20260801, Anthropic::Models::Beta::BetaToolTextEditor20250124, Anthropic::Models::Beta::BetaToolTextEditor20250429, Anthropic::Models::Beta::BetaToolTextEditor20250728, Anthropic::Models::Beta::BetaWebSearchTool20250305, Anthropic::Models::Beta::BetaWebFetchTool20250910, Anthropic::Models::Beta::BetaWebSearchTool20260209, Anthropic::Models::Beta::BetaWebFetchTool20260209, Anthropic::Models::Beta::BetaWebFetchTool20260309, Anthropic::Models::Beta::BetaWebSearchTool20260318, Anthropic::Models::Beta::BetaWebFetchTool20260318, Anthropic::Models::Beta::BetaAdvisorTool20260301, Anthropic::Models::Beta::BetaToolSearchToolBm25_20251119, Anthropic::Models::Beta::BetaToolSearchToolRegex20251119, Anthropic::Models::Beta::BetaMCPToolset]
        #   @param type [Symbol, :tool_definition]
      end
    end

    BetaToolChangeToolDefinition = Beta::BetaToolChangeToolDefinition
  end
end
