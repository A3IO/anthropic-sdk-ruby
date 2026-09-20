# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaCompactionBlockParam < Anthropic::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, :compaction]
        required :type, const: :compaction

        # @!attribute cache_control
        #   Create a cache control breakpoint at this content block.
        #
        #   @return [Anthropic::Models::Beta::BetaCacheControlEphemeral, nil]
        optional :cache_control, -> { Anthropic::Beta::BetaCacheControlEphemeral }, nil?: true

        # @!attribute content
        #   Summary of previously compacted content, or null if compaction failed
        #
        #   @return [String, nil]
        optional :content, String, nil?: true

        # @!attribute encrypted_content
        #   Opaque metadata from prior compaction, to be round-tripped verbatim
        #
        #   @return [String, nil]
        optional :encrypted_content, String, nil?: true

        # @!attribute signature
        #   The block's signature as returned, to be sent back verbatim
        #
        #   @return [String, nil]
        optional :signature, String, nil?: true

        # @!attribute tool_changes
        #   The tool changes of the compacted range, as the server returned them on this
        #   block: the `tool_addition` and `tool_removal` entries that take the request's
        #   `tools` to the tool set in effect at the end of the range. Send them back
        #   unchanged with the block.
        #
        #   @return [Array<Anthropic::Models::Beta::BetaRequestToolAdditionBlock, Anthropic::Models::Beta::BetaRequestToolRemovalBlock>, nil]
        optional :tool_changes,
                 -> {
                   Anthropic::Internal::Type::ArrayOf[union: Anthropic::Beta::BetaCompactionBlockParam::ToolChange]
                 },
                 nil?: true

        # @!method initialize(cache_control: nil, content: nil, encrypted_content: nil, signature: nil, tool_changes: nil, type: :compaction)
        #   A compaction block containing summary of previous context.
        #
        #   Users should round-trip these blocks from responses to subsequent requests to
        #   maintain context across compaction boundaries.
        #
        #   When content is None, the block represents a failed compaction. The server
        #   treats these as no-ops. Empty string content is not allowed.
        #
        #   Some parameter documentations has been truncated, see
        #   {Anthropic::Models::Beta::BetaCompactionBlockParam} for more details.
        #
        #   @param cache_control [Anthropic::Models::Beta::BetaCacheControlEphemeral, nil] Create a cache control breakpoint at this content block.
        #
        #   @param content [String, nil] Summary of previously compacted content, or null if compaction failed
        #
        #   @param encrypted_content [String, nil] Opaque metadata from prior compaction, to be round-tripped verbatim
        #
        #   @param signature [String, nil] The block's signature as returned, to be sent back verbatim
        #
        #   @param tool_changes [Array<Anthropic::Models::Beta::BetaRequestToolAdditionBlock, Anthropic::Models::Beta::BetaRequestToolRemovalBlock>, nil] The tool changes of the compacted range, as the server returned them on this blo
        #
        #   @param type [Symbol, :compaction]

        module ToolChange
          extend Anthropic::Internal::Type::Union

          discriminator :type

          # Mid-conversation directive to make a tool available.
          #
          # ``tool`` is a reference to a tool (or MCP toolset) declared in the
          # request's ``tools``. Under the ``inline-tools-2026-09-15`` beta it may
          # instead be a reference to a tool defined earlier in ``messages``, or a
          # ``tool_definition`` object that carries an inline tool definition in
          # ``definition`` (the same object a ``tools`` entry holds). An ``mcp_toolset``
          # definition also requires the ``mcp-client-2026-09-15`` beta. The tool is
          # offered to the model from this point in the conversation onward.
          variant :tool_addition, -> { Anthropic::Beta::BetaRequestToolAdditionBlock }

          # Mid-conversation directive to withdraw a tool.
          #
          # ``tool`` references a tool (or MCP toolset) by name: one declared in the
          # request's ``tools`` or defined earlier in ``messages``. It is no longer
          # offered to the model from this point in the conversation onward.
          variant :tool_removal, -> { Anthropic::Beta::BetaRequestToolRemovalBlock }

          module Type
            extend Anthropic::Internal::Type::Enum

            TOOL_ADDITION = :tool_addition
            TOOL_REMOVAL = :tool_removal

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @!method self.variants
          #   @return [Array(Anthropic::Models::Beta::BetaRequestToolAdditionBlock, Anthropic::Models::Beta::BetaRequestToolRemovalBlock)]

          # Creates a new instance of the variant class whose `type` matches the given
          # value, passing the remaining arguments to its constructor.
          #
          # @param type [Symbol, Anthropic::Models::Beta::BetaCompactionBlockParam::ToolChange::Type, String]
          #
          # @param args [Hash{Symbol=>Object}] Attributes for the chosen variant.
          #
          #   @option args [Anthropic::Models::Beta::BetaToolChangeToolReference, Anthropic::Models::Beta::BetaToolChangeMCPToolReference, Anthropic::Models::Beta::BetaToolChangeMCPToolsetReference, Anthropic::Models::Beta::BetaToolChangeToolDefinitionParam, Anthropic::Models::Beta::BetaToolChangeToolReference, Anthropic::Models::Beta::BetaToolChangeMCPToolReference, Anthropic::Models::Beta::BetaToolChangeMCPToolsetReference] :tool
          #
          #   @option args [Anthropic::Models::Beta::BetaCacheControlEphemeral, nil] :cache_control Create a cache control breakpoint at this content block.
          #
          # @raise [ArgumentError]
          # @return [Anthropic::Models::Beta::BetaRequestToolAdditionBlock, Anthropic::Models::Beta::BetaRequestToolRemovalBlock]
          def self.new(type:, **args)
            case type.to_sym
            when :tool_addition
              Anthropic::Beta::BetaRequestToolAdditionBlock.new(**args)
            when :tool_removal
              Anthropic::Beta::BetaRequestToolRemovalBlock.new(**args)
            else
              raise ArgumentError, "unknown type: #{type}"
            end
          end
        end
      end
    end

    BetaCompactionBlockParam = Beta::BetaCompactionBlockParam
  end
end
