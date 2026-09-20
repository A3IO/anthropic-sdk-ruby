# typed: strong

module Anthropic
  module Models
    BetaCompactionBlock = Beta::BetaCompactionBlock

    module Beta
      class BetaCompactionBlock < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaCompactionBlock,
              Anthropic::Internal::AnyHash
            )
          end

        # Summary of compacted content, or null if compaction failed
        sig { returns(T.nilable(String)) }
        attr_accessor :content

        # Opaque metadata from prior compaction, to be round-tripped verbatim
        sig { returns(T.nilable(String)) }
        attr_accessor :encrypted_content

        sig { returns(Symbol) }
        attr_accessor :type

        # Signature over the summary, to be sent back with the block verbatim
        sig { returns(T.nilable(String)) }
        attr_accessor :signature

        # The tool changes of the compacted range: the `tool_addition` and `tool_removal`
        # blocks that take the request's `tools` to the tool set in effect at the end of
        # the range, or `[]` when the range changed no tool. Absent when the server did
        # not compute them. Send the block back unchanged.
        sig do
          returns(
            T.nilable(
              T::Array[
                Anthropic::Beta::BetaCompactionBlock::ToolChange::Variants
              ]
            )
          )
        end
        attr_accessor :tool_changes

        # A compaction block returned when autocompact is triggered.
        #
        # When content is None, it indicates the compaction failed to produce a valid
        # summary (e.g., malformed output from the model). Clients may round-trip
        # compaction blocks with null content; the server treats them as no-ops.
        sig do
          params(
            content: T.nilable(String),
            encrypted_content: T.nilable(String),
            signature: T.nilable(String),
            tool_changes:
              T.nilable(
                T::Array[
                  T.any(
                    Anthropic::Beta::BetaResponseToolAdditionBlock::OrHash,
                    Anthropic::Beta::BetaResponseToolRemovalBlock::OrHash
                  )
                ]
              ),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Summary of compacted content, or null if compaction failed
          content:,
          # Opaque metadata from prior compaction, to be round-tripped verbatim
          encrypted_content:,
          # Signature over the summary, to be sent back with the block verbatim
          signature: nil,
          # The tool changes of the compacted range: the `tool_addition` and `tool_removal`
          # blocks that take the request's `tools` to the tool set in effect at the end of
          # the range, or `[]` when the range changed no tool. Absent when the server did
          # not compute them. Send the block back unchanged.
          tool_changes: nil,
          type: :compaction
        )
        end

        sig do
          override.returns(
            {
              content: T.nilable(String),
              encrypted_content: T.nilable(String),
              type: Symbol,
              signature: T.nilable(String),
              tool_changes:
                T.nilable(
                  T::Array[
                    Anthropic::Beta::BetaCompactionBlock::ToolChange::Variants
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
                Anthropic::Beta::BetaResponseToolAdditionBlock,
                Anthropic::Beta::BetaResponseToolRemovalBlock
              )
            end

          module Type
            extend Anthropic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Anthropic::Beta::BetaCompactionBlock::ToolChange::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TOOL_ADDITION =
              T.let(
                :tool_addition,
                Anthropic::Beta::BetaCompactionBlock::ToolChange::Type::TaggedSymbol
              )
            TOOL_REMOVAL =
              T.let(
                :tool_removal,
                Anthropic::Beta::BetaCompactionBlock::ToolChange::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Anthropic::Beta::BetaCompactionBlock::ToolChange::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          sig do
            override.returns(
              T::Array[
                Anthropic::Beta::BetaCompactionBlock::ToolChange::Variants
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
                Anthropic::Beta::BetaCompactionBlock::ToolChange::Type::OrSymbol,
              tool:
                T.any(
                  T.any(
                    Anthropic::Beta::BetaResponseToolChangeToolReference::OrHash,
                    Anthropic::Beta::BetaResponseToolChangeMCPToolReference::OrHash,
                    Anthropic::Beta::BetaResponseToolChangeMCPToolsetReference::OrHash,
                    Anthropic::Beta::BetaToolChangeToolDefinition::OrHash
                  ),
                  T.any(
                    Anthropic::Beta::BetaResponseToolChangeToolReference::OrHash,
                    Anthropic::Beta::BetaResponseToolChangeMCPToolReference::OrHash,
                    Anthropic::Beta::BetaResponseToolChangeMCPToolsetReference::OrHash
                  )
                )
            ).returns(
              Anthropic::Beta::BetaCompactionBlock::ToolChange::Variants
            )
          end
          def self.new(
            type:,
            # The tool made available: a reference to a `tools` entry or MCP toolset, or a
            # `tool_definition` carrying the definition by value.
            tool:
          )
          end
        end
      end
    end
  end
end
