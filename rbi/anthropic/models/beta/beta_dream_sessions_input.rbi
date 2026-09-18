# typed: strong

module Anthropic
  module Models
    BetaDreamSessionsInput = Beta::BetaDreamSessionsInput

    module Beta
      class BetaDreamSessionsInput < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaDreamSessionsInput,
              Anthropic::Internal::AnyHash
            )
          end

        # The IDs of the sessions whose transcripts the dream reads (`sesn_...`).
        #
        # Give 1 to 100 IDs, with no duplicates. Each session must be in the same
        # workspace as the dream. Responses list the IDs in sorted order.
        #
        # The
        # [limits table in the Dreams guide](https://platform.claude.com/docs/en/managed-agents/dreams#limits)
        # lists all the limits on a dream.
        sig { returns(T::Array[String]) }
        attr_accessor :session_ids

        sig { returns(Anthropic::Beta::BetaDreamSessionsInput::Type::OrSymbol) }
        attr_accessor :type

        # The sessions that a dream reads, given as an entry in `inputs`.
        sig do
          params(
            session_ids: T::Array[String],
            type: Anthropic::Beta::BetaDreamSessionsInput::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The IDs of the sessions whose transcripts the dream reads (`sesn_...`).
          #
          # Give 1 to 100 IDs, with no duplicates. Each session must be in the same
          # workspace as the dream. Responses list the IDs in sorted order.
          #
          # The
          # [limits table in the Dreams guide](https://platform.claude.com/docs/en/managed-agents/dreams#limits)
          # lists all the limits on a dream.
          session_ids:,
          type:
        )
        end

        sig do
          override.returns(
            {
              session_ids: T::Array[String],
              type: Anthropic::Beta::BetaDreamSessionsInput::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Anthropic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Anthropic::Beta::BetaDreamSessionsInput::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SESSIONS =
            T.let(
              :sessions,
              Anthropic::Beta::BetaDreamSessionsInput::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Anthropic::Beta::BetaDreamSessionsInput::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
