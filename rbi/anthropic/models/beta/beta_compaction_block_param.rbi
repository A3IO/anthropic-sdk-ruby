# typed: strong

module Anthropic
  module Models
    BetaCompactionBlockParam = Beta::BetaCompactionBlockParam

    module Beta
      class BetaCompactionBlockParam < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaCompactionBlockParam,
              Anthropic::Internal::AnyHash
            )
          end

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

        # Summary of previously compacted content, or null if compaction failed
        sig { returns(T.nilable(String)) }
        attr_accessor :content

        # Opaque metadata from prior compaction, to be round-tripped verbatim
        sig { returns(T.nilable(String)) }
        attr_accessor :encrypted_content

        # The block's signature as returned, to be sent back verbatim
        sig { returns(T.nilable(String)) }
        attr_accessor :signature

        # The tool changes of the compacted range, as the server returned them on this
        # block: the `tool_addition` and `tool_removal` entries that take the request's
        # `tools` to the tool set in effect at the end of the range. Send them back
        # unchanged with the block.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Anthropic::Beta::BetaRequestToolAdditionBlock,
                  Anthropic::Beta::BetaRequestToolRemovalBlock
                )
              ]
            )
          )
        end
        attr_accessor :tool_changes

        # A compaction block containing summary of previous context.
        #
        # Users should round-trip these blocks from responses to subsequent requests to
        # maintain context across compaction boundaries.
        #
        # When content is None, the block represents a failed compaction. The server
        # treats these as no-ops. Empty string content is not allowed.
        sig do
          params(
            cache_control:
              T.nilable(Anthropic::Beta::BetaCacheControlEphemeral::OrHash),
            content: T.nilable(String),
            encrypted_content: T.nilable(String),
            signature: T.nilable(String),
            tool_changes:
              T.nilable(
                T::Array[
                  T.any(
                    Anthropic::Beta::BetaRequestToolAdditionBlock::OrHash,
                    Anthropic::Beta::BetaRequestToolRemovalBlock::OrHash
                  )
                ]
              ),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Create a cache control breakpoint at this content block.
          cache_control: nil,
          # Summary of previously compacted content, or null if compaction failed
          content: nil,
          # Opaque metadata from prior compaction, to be round-tripped verbatim
          encrypted_content: nil,
          # The block's signature as returned, to be sent back verbatim
          signature: nil,
          # The tool changes of the compacted range, as the server returned them on this
          # block: the `tool_addition` and `tool_removal` entries that take the request's
          # `tools` to the tool set in effect at the end of the range. Send them back
          # unchanged with the block.
          tool_changes: nil,
          type: :compaction
        )
        end

        sig do
          override.returns(
            {
              type: Symbol,
              cache_control:
                T.nilable(Anthropic::Beta::BetaCacheControlEphemeral),
              content: T.nilable(String),
              encrypted_content: T.nilable(String),
              signature: T.nilable(String),
              tool_changes:
                T.nilable(
                  T::Array[
                    T.any(
                      Anthropic::Beta::BetaRequestToolAdditionBlock,
                      Anthropic::Beta::BetaRequestToolRemovalBlock
                    )
                  ]
                )
            }
          )
        end
        def to_hash
        end

        module ToolChange
          extend Anthropic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Anthropic::Beta::BetaRequestToolAdditionBlock,
                Anthropic::Beta::BetaRequestToolRemovalBlock
              )
            end

          module Type
            extend Anthropic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Anthropic::Beta::BetaCompactionBlockParam::ToolChange::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TOOL_ADDITION =
              T.let(
                :tool_addition,
                Anthropic::Beta::BetaCompactionBlockParam::ToolChange::Type::TaggedSymbol
              )
            TOOL_REMOVAL =
              T.let(
                :tool_removal,
                Anthropic::Beta::BetaCompactionBlockParam::ToolChange::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Anthropic::Beta::BetaCompactionBlockParam::ToolChange::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          sig do
            override.returns(
              T::Array[
                Anthropic::Beta::BetaCompactionBlockParam::ToolChange::Variants
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
                Anthropic::Beta::BetaCompactionBlockParam::ToolChange::Type::OrSymbol,
              tool:
                T.any(
                  T.any(
                    Anthropic::Beta::BetaToolChangeToolReference::OrHash,
                    Anthropic::Beta::BetaToolChangeMCPToolReference::OrHash,
                    Anthropic::Beta::BetaToolChangeMCPToolsetReference::OrHash,
                    Anthropic::Beta::BetaToolChangeToolDefinitionParam::OrHash
                  ),
                  T.any(
                    Anthropic::Beta::BetaToolChangeToolReference::OrHash,
                    Anthropic::Beta::BetaToolChangeMCPToolReference::OrHash,
                    Anthropic::Beta::BetaToolChangeMCPToolsetReference::OrHash
                  )
                ),
              cache_control:
                T.nilable(Anthropic::Beta::BetaCacheControlEphemeral::OrHash)
            ).returns(
              Anthropic::Beta::BetaCompactionBlockParam::ToolChange::Variants
            )
          end
          def self.new(
            type:,
            tool:,
            # Create a cache control breakpoint at this content block.
            cache_control: nil
          )
          end
        end
      end
    end
  end
end
