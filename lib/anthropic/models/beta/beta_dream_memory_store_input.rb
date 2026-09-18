# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaDreamMemoryStoreInput < Anthropic::Internal::Type::BaseModel
        # @!attribute memory_store_id
        #   The ID of the memory store for the dream to read (`memstore_...`).
        #
        #   The memory store must be in the same workspace as the dream and must not be
        #   archived.
        #
        #   @return [String]
        required :memory_store_id, String

        # @!attribute type
        #
        #   @return [Symbol, Anthropic::Models::Beta::BetaDreamMemoryStoreInput::Type]
        required :type, enum: -> { Anthropic::Beta::BetaDreamMemoryStoreInput::Type }

        # @!method initialize(memory_store_id:, type:)
        #   The memory store that a dream reads, given as an entry in `inputs`.
        #
        #   With `output_behavior` set to `update_existing`, the dream writes its result
        #   into this memory store. Otherwise the dream doesn't change it.
        #
        #   Some parameter documentations has been truncated, see
        #   {Anthropic::Models::Beta::BetaDreamMemoryStoreInput} for more details.
        #
        #   @param memory_store_id [String] The ID of the memory store for the dream to read (`memstore_...`).
        #
        #   @param type [Symbol, Anthropic::Models::Beta::BetaDreamMemoryStoreInput::Type]

        # @see Anthropic::Models::Beta::BetaDreamMemoryStoreInput#type
        module Type
          extend Anthropic::Internal::Type::Enum

          MEMORY_STORE = :memory_store

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    BetaDreamMemoryStoreInput = Beta::BetaDreamMemoryStoreInput
  end
end
