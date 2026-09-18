# typed: strong

module Anthropic
  module Models
    BetaDreamMemoryStoreOutput = Beta::BetaDreamMemoryStoreOutput

    module Beta
      class BetaDreamMemoryStoreOutput < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaDreamMemoryStoreOutput,
              Anthropic::Internal::AnyHash
            )
          end

        # The ID of the memory store that the dream writes its result to (`memstore_...`).
        #
        # With `output_behavior` set to `create_new`, this is a new memory store. With
        # `update_existing`, it is the input memory store.
        sig { returns(String) }
        attr_accessor :memory_store_id

        sig do
          returns(Anthropic::Beta::BetaDreamMemoryStoreOutput::Type::OrSymbol)
        end
        attr_accessor :type

        # An output memory store the dream writes consolidated memories into.
        sig do
          params(
            memory_store_id: String,
            type: Anthropic::Beta::BetaDreamMemoryStoreOutput::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the memory store that the dream writes its result to (`memstore_...`).
          #
          # With `output_behavior` set to `create_new`, this is a new memory store. With
          # `update_existing`, it is the input memory store.
          memory_store_id:,
          type:
        )
        end

        sig do
          override.returns(
            {
              memory_store_id: String,
              type: Anthropic::Beta::BetaDreamMemoryStoreOutput::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Anthropic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Anthropic::Beta::BetaDreamMemoryStoreOutput::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MEMORY_STORE =
            T.let(
              :memory_store,
              Anthropic::Beta::BetaDreamMemoryStoreOutput::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Anthropic::Beta::BetaDreamMemoryStoreOutput::Type::TaggedSymbol
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
