# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaResponseToolRemovalBlock < Anthropic::Internal::Type::BaseModel
        # @!attribute tool
        #   A reference to the withdrawn `tools` entry, MCP tool or MCP toolset.
        #
        #   @return [Anthropic::Models::Beta::BetaResponseToolChangeToolReference, Anthropic::Models::Beta::BetaResponseToolChangeMCPToolReference, Anthropic::Models::Beta::BetaResponseToolChangeMCPToolsetReference]
        required :tool, union: -> { Anthropic::Beta::BetaResponseToolRemovalBlock::Tool }

        # @!attribute type
        #
        #   @return [Symbol, :tool_removal]
        required :type, const: :tool_removal

        # @!method initialize(tool:, type: :tool_removal)
        #   An entry of a `compaction` block's `tool_changes`: a tool of the request's
        #   `tools` (or an MCP tool or toolset) that the compacted range withdrew. Send it
        #   back unchanged.
        #
        #   @param tool [Anthropic::Models::Beta::BetaResponseToolChangeToolReference, Anthropic::Models::Beta::BetaResponseToolChangeMCPToolReference, Anthropic::Models::Beta::BetaResponseToolChangeMCPToolsetReference] A reference to the withdrawn `tools` entry, MCP tool or MCP toolset.
        #
        #   @param type [Symbol, :tool_removal]

        # A reference to the withdrawn `tools` entry, MCP tool or MCP toolset.
        #
        # @see Anthropic::Models::Beta::BetaResponseToolRemovalBlock#tool
        module Tool
          extend Anthropic::Internal::Type::Union

          discriminator :type

          # Reference to a single tool, by the name the model uses to call it, as
          # a ``compaction`` block's ``tool_changes`` entry reports it: a tool
          # declared in ``tools`` or defined by an earlier ``tool_addition`` block.
          # Send it back unchanged with the block.
          variant :tool_reference, -> { Anthropic::Beta::BetaResponseToolChangeToolReference }

          # Reference to a single MCP tool, by its server and its name on that
          # server, as a ``compaction`` block's ``tool_changes`` entry reports it.
          # Send it back unchanged with the block.
          variant :mcp_tool_reference, -> { Anthropic::Beta::BetaResponseToolChangeMCPToolReference }

          # Reference to every tool in the named MCP server's toolset, as a
          # ``compaction`` block's ``tool_changes`` entry reports it. Send it back
          # unchanged with the block.
          variant :mcp_toolset_reference, -> { Anthropic::Beta::BetaResponseToolChangeMCPToolsetReference }

          module Type
            extend Anthropic::Internal::Type::Enum

            TOOL_REFERENCE = :tool_reference
            MCP_TOOL_REFERENCE = :mcp_tool_reference
            MCP_TOOLSET_REFERENCE = :mcp_toolset_reference

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @!method self.variants
          #   @return [Array(Anthropic::Models::Beta::BetaResponseToolChangeToolReference, Anthropic::Models::Beta::BetaResponseToolChangeMCPToolReference, Anthropic::Models::Beta::BetaResponseToolChangeMCPToolsetReference)]

          # Creates a new instance of the variant class whose `type` matches the given
          # value, passing the remaining arguments to its constructor.
          #
          # @param type [Symbol, Anthropic::Models::Beta::BetaResponseToolRemovalBlock::Tool::Type, String]
          #
          # @param args [Hash{Symbol=>Object}] Attributes for the chosen variant.
          #
          #   @option args [String] :name
          #
          #   @option args [String] :server_name
          #
          # @raise [ArgumentError]
          # @return [Anthropic::Models::Beta::BetaResponseToolChangeToolReference, Anthropic::Models::Beta::BetaResponseToolChangeMCPToolReference, Anthropic::Models::Beta::BetaResponseToolChangeMCPToolsetReference]
          def self.new(type:, **args)
            case type.to_sym
            when :tool_reference
              Anthropic::Beta::BetaResponseToolChangeToolReference.new(**args)
            when :mcp_tool_reference
              Anthropic::Beta::BetaResponseToolChangeMCPToolReference.new(**args)
            when :mcp_toolset_reference
              Anthropic::Beta::BetaResponseToolChangeMCPToolsetReference.new(**args)
            else
              raise ArgumentError, "unknown type: #{type}"
            end
          end
        end
      end
    end

    BetaResponseToolRemovalBlock = Beta::BetaResponseToolRemovalBlock
  end
end
