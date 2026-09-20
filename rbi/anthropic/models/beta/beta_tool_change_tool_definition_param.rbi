# typed: strong

module Anthropic
  module Models
    BetaToolChangeToolDefinitionParam = Beta::BetaToolChangeToolDefinitionParam

    module Beta
      class BetaToolChangeToolDefinitionParam < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaToolChangeToolDefinitionParam,
              Anthropic::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.any(
              Anthropic::Beta::BetaTool,
              Anthropic::Beta::BetaToolBash20241022,
              Anthropic::Beta::BetaToolBash20250124,
              Anthropic::Beta::BetaCodeExecutionTool20250522,
              Anthropic::Beta::BetaCodeExecutionTool20250825,
              Anthropic::Beta::BetaCodeExecutionTool20260120,
              Anthropic::Beta::BetaCodeExecutionTool20260521,
              Anthropic::Beta::BetaBrowserToolset20260801,
              Anthropic::Beta::BetaToolComputerUse20241022,
              Anthropic::Beta::BetaMemoryTool20250818,
              Anthropic::Beta::BetaToolComputerUse20250124,
              Anthropic::Beta::BetaToolTextEditor20241022,
              Anthropic::Beta::BetaToolComputerUse20251124,
              Anthropic::Beta::BetaComputerToolset20260801,
              Anthropic::Beta::BetaToolTextEditor20250124,
              Anthropic::Beta::BetaToolTextEditor20250429,
              Anthropic::Beta::BetaToolTextEditor20250728,
              Anthropic::Beta::BetaWebSearchTool20250305,
              Anthropic::Beta::BetaWebFetchTool20250910,
              Anthropic::Beta::BetaWebSearchTool20260209,
              Anthropic::Beta::BetaWebFetchTool20260209,
              Anthropic::Beta::BetaWebFetchTool20260309,
              Anthropic::Beta::BetaWebSearchTool20260318,
              Anthropic::Beta::BetaWebFetchTool20260318,
              Anthropic::Beta::BetaAdvisorTool20260301,
              Anthropic::Beta::BetaToolSearchToolBm25_20251119,
              Anthropic::Beta::BetaToolSearchToolRegex20251119,
              Anthropic::Beta::BetaMCPToolset
            )
          )
        end
        attr_accessor :definition

        sig { returns(Symbol) }
        attr_accessor :type

        # A tool defined by value: `definition` is a `tools` entry (any kind `tools`
        # accepts, an MCP toolset included). An `mcp_toolset` given here also requires the
        # `mcp-client-2026-09-15` beta.
        sig do
          params(
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
              ),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(definition:, type: :tool_definition)
        end

        sig do
          override.returns(
            {
              definition:
                T.any(
                  Anthropic::Beta::BetaTool,
                  Anthropic::Beta::BetaToolBash20241022,
                  Anthropic::Beta::BetaToolBash20250124,
                  Anthropic::Beta::BetaCodeExecutionTool20250522,
                  Anthropic::Beta::BetaCodeExecutionTool20250825,
                  Anthropic::Beta::BetaCodeExecutionTool20260120,
                  Anthropic::Beta::BetaCodeExecutionTool20260521,
                  Anthropic::Beta::BetaBrowserToolset20260801,
                  Anthropic::Beta::BetaToolComputerUse20241022,
                  Anthropic::Beta::BetaMemoryTool20250818,
                  Anthropic::Beta::BetaToolComputerUse20250124,
                  Anthropic::Beta::BetaToolTextEditor20241022,
                  Anthropic::Beta::BetaToolComputerUse20251124,
                  Anthropic::Beta::BetaComputerToolset20260801,
                  Anthropic::Beta::BetaToolTextEditor20250124,
                  Anthropic::Beta::BetaToolTextEditor20250429,
                  Anthropic::Beta::BetaToolTextEditor20250728,
                  Anthropic::Beta::BetaWebSearchTool20250305,
                  Anthropic::Beta::BetaWebFetchTool20250910,
                  Anthropic::Beta::BetaWebSearchTool20260209,
                  Anthropic::Beta::BetaWebFetchTool20260209,
                  Anthropic::Beta::BetaWebFetchTool20260309,
                  Anthropic::Beta::BetaWebSearchTool20260318,
                  Anthropic::Beta::BetaWebFetchTool20260318,
                  Anthropic::Beta::BetaAdvisorTool20260301,
                  Anthropic::Beta::BetaToolSearchToolBm25_20251119,
                  Anthropic::Beta::BetaToolSearchToolRegex20251119,
                  Anthropic::Beta::BetaMCPToolset
                ),
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
