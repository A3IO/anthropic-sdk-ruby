# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaDreamMemoryStoreOutput < Anthropic::Internal::Type::BaseModel
        # @!attribute memory_store_id
        #   The ID of the memory store that the dream writes its result to (`memstore_...`).
        #
        #   With `output_behavior` set to `create_new`, this is a new memory store. With
        #   `update_existing`, it is the input memory store.
        #
        #   @return [String]
        required :memory_store_id, String

        # @!attribute type
        #
        #   @return [Symbol, Anthropic::Models::Beta::BetaDreamMemoryStoreOutput::Type]
        required :type, enum: -> { Anthropic::Beta::BetaDreamMemoryStoreOutput::Type }

        # @!method initialize(memory_store_id:, type:)
        #   The memory store that holds a dream's result, as an entry in `outputs`.
        #
        #   Some parameter documentations has been truncated, see
        #   {Anthropic::Models::Beta::BetaDreamMemoryStoreOutput} for more details.
        #
        #   @param memory_store_id [String] The ID of the memory store that the dream writes its result to (`memstore_...`).
        #
        #   @param type [Symbol, Anthropic::Models::Beta::BetaDreamMemoryStoreOutput::Type]

        # @see Anthropic::Models::Beta::BetaDreamMemoryStoreOutput#type
        module Type
          extend Anthropic::Internal::Type::Enum

          MEMORY_STORE = :memory_store

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    BetaDreamMemoryStoreOutput = Beta::BetaDreamMemoryStoreOutput
  end
end
