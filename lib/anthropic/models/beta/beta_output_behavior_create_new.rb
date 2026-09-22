# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaOutputBehaviorCreateNew < Anthropic::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Anthropic::Models::Beta::BetaOutputBehaviorCreateNew::Type]
        required :type, enum: -> { Anthropic::Beta::BetaOutputBehaviorCreateNew::Type }

        # @!method initialize(type:)
        #   Write the result to a new memory store that starts as a copy of the input memory
        #   store. This is the default.
        #
        #   The new memory store is in the same workspace as the dream. The dream doesn't
        #   change the input memory store.
        #
        #   @param type [Symbol, Anthropic::Models::Beta::BetaOutputBehaviorCreateNew::Type]

        # @see Anthropic::Models::Beta::BetaOutputBehaviorCreateNew#type
        module Type
          extend Anthropic::Internal::Type::Enum

          CREATE_NEW = :create_new

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    BetaOutputBehaviorCreateNew = Beta::BetaOutputBehaviorCreateNew
  end
end
