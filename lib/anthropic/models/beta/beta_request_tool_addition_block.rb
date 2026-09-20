# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaRequestToolAdditionBlock < Anthropic::Internal::Type::BaseModel
        # @!attribute tool
        #
        #   @return [Anthropic::Models::Beta::BetaToolChangeToolReference, Anthropic::Models::Beta::BetaToolChangeMCPToolReference, Anthropic::Models::Beta::BetaToolChangeMCPToolsetReference, Anthropic::Models::Beta::BetaToolChangeToolDefinitionParam]
        required :tool, union: -> { Anthropic::Beta::BetaRequestToolAdditionBlock::Tool }

        # @!attribute type
        #
        #   @return [Symbol, :tool_addition]
        required :type, const: :tool_addition

        # @!attribute cache_control
        #   Create a cache control breakpoint at this content block.
        #
        #   @return [Anthropic::Models::Beta::BetaCacheControlEphemeral, nil]
        optional :cache_control, -> { Anthropic::Beta::BetaCacheControlEphemeral }, nil?: true

        # @!method initialize(tool:, cache_control: nil, type: :tool_addition)
        #   Mid-conversation directive to make a tool available.
        #
        #   `tool` is a reference to a tool (or MCP toolset) declared in the request's
        #   `tools`. Under the `inline-tools-2026-09-15` beta it may instead be a reference
        #   to a tool defined earlier in `messages`, or a `tool_definition` object that
        #   carries an inline tool definition in `definition` (the same object a `tools`
        #   entry holds). An `mcp_toolset` definition also requires the
        #   `mcp-client-2026-09-15` beta. The tool is offered to the model from this point
        #   in the conversation onward.
        #
        #   @param tool [Anthropic::Models::Beta::BetaToolChangeToolReference, Anthropic::Models::Beta::BetaToolChangeMCPToolReference, Anthropic::Models::Beta::BetaToolChangeMCPToolsetReference, Anthropic::Models::Beta::BetaToolChangeToolDefinitionParam]
        #
        #   @param cache_control [Anthropic::Models::Beta::BetaCacheControlEphemeral, nil] Create a cache control breakpoint at this content block.
        #
        #   @param type [Symbol, :tool_addition]

        # @see Anthropic::Models::Beta::BetaRequestToolAdditionBlock#tool
        module Tool
          extend Anthropic::Internal::Type::Union

          discriminator :type

          # Reference to a single tool, by the name the model uses to call it: a
          # tool declared in ``tools`` or defined by an earlier ``tool_addition``
          # block. Does not accept the composed ``{server}_{name}`` form the server
          # assigns to MCP-resolved tools; use ``mcp_tool_reference`` or
          # ``mcp_toolset_reference`` for those.
          variant :tool_reference, -> { Anthropic::Beta::BetaToolChangeToolReference }

          # Reference to a single MCP tool by its server and remote name; the
          # same ``server_name``/``name`` pair ``mcp_tool_use`` carries.
          variant :mcp_tool_reference, -> { Anthropic::Beta::BetaToolChangeMCPToolReference }

          # Reference to every tool in the named MCP server's toolset.
          variant :mcp_toolset_reference, -> { Anthropic::Beta::BetaToolChangeMCPToolsetReference }

          # A tool defined by value: `definition` is a `tools` entry (any kind
          # `tools` accepts, an MCP toolset included). An `mcp_toolset` given here
          # also requires the `mcp-client-2026-09-15` beta.
          variant :tool_definition, -> { Anthropic::Beta::BetaToolChangeToolDefinitionParam }

          module Type
            extend Anthropic::Internal::Type::Enum

            TOOL_REFERENCE = :tool_reference
            MCP_TOOL_REFERENCE = :mcp_tool_reference
            MCP_TOOLSET_REFERENCE = :mcp_toolset_reference
            TOOL_DEFINITION = :tool_definition

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @!method self.variants
          #   @return [Array(Anthropic::Models::Beta::BetaToolChangeToolReference, Anthropic::Models::Beta::BetaToolChangeMCPToolReference, Anthropic::Models::Beta::BetaToolChangeMCPToolsetReference, Anthropic::Models::Beta::BetaToolChangeToolDefinitionParam)]

          # Creates a new instance of the variant class whose `type` matches the given
          # value, passing the remaining arguments to its constructor.
          #
          # @param type [Symbol, Anthropic::Models::Beta::BetaRequestToolAdditionBlock::Tool::Type, String]
          #
          # @param args [Hash{Symbol=>Object}] Attributes for the chosen variant.
          #
          #   @option args [String] :name
          #
          #   @option args [String] :server_name
          #
          #   @option args [Anthropic::Models::Beta::BetaTool, Anthropic::Models::Beta::BetaToolBash20241022, Anthropic::Models::Beta::BetaToolBash20250124, Anthropic::Models::Beta::BetaCodeExecutionTool20250522, Anthropic::Models::Beta::BetaCodeExecutionTool20250825, Anthropic::Models::Beta::BetaCodeExecutionTool20260120, Anthropic::Models::Beta::BetaCodeExecutionTool20260521, Anthropic::Models::Beta::BetaBrowserToolset20260801, Anthropic::Models::Beta::BetaToolComputerUse20241022, Anthropic::Models::Beta::BetaMemoryTool20250818, Anthropic::Models::Beta::BetaToolComputerUse20250124, Anthropic::Models::Beta::BetaToolTextEditor20241022, Anthropic::Models::Beta::BetaToolComputerUse20251124, Anthropic::Models::Beta::BetaComputerToolset20260801, Anthropic::Models::Beta::BetaToolTextEditor20250124, Anthropic::Models::Beta::BetaToolTextEditor20250429, Anthropic::Models::Beta::BetaToolTextEditor20250728, Anthropic::Models::Beta::BetaWebSearchTool20250305, Anthropic::Models::Beta::BetaWebFetchTool20250910, Anthropic::Models::Beta::BetaWebSearchTool20260209, Anthropic::Models::Beta::BetaWebFetchTool20260209, Anthropic::Models::Beta::BetaWebFetchTool20260309, Anthropic::Models::Beta::BetaWebSearchTool20260318, Anthropic::Models::Beta::BetaWebFetchTool20260318, Anthropic::Models::Beta::BetaAdvisorTool20260301, Anthropic::Models::Beta::BetaToolSearchToolBm25_20251119, Anthropic::Models::Beta::BetaToolSearchToolRegex20251119, Anthropic::Models::Beta::BetaMCPToolset] :definition
          #
          # @raise [ArgumentError]
          # @return [Anthropic::Models::Beta::BetaToolChangeToolReference, Anthropic::Models::Beta::BetaToolChangeMCPToolReference, Anthropic::Models::Beta::BetaToolChangeMCPToolsetReference, Anthropic::Models::Beta::BetaToolChangeToolDefinitionParam]
          def self.new(type:, **args)
            case type.to_sym
            when :tool_reference
              Anthropic::Beta::BetaToolChangeToolReference.new(**args)
            when :mcp_tool_reference
              Anthropic::Beta::BetaToolChangeMCPToolReference.new(**args)
            when :mcp_toolset_reference
              Anthropic::Beta::BetaToolChangeMCPToolsetReference.new(**args)
            when :tool_definition
              Anthropic::Beta::BetaToolChangeToolDefinitionParam.new(**args)
            else
              raise ArgumentError, "unknown type: #{type}"
            end
          end
        end
      end
    end

    BetaRequestToolAdditionBlock = Beta::BetaRequestToolAdditionBlock
  end
end
