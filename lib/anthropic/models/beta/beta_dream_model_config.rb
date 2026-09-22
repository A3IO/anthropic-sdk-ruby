# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaDreamModelConfig < Anthropic::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the model that runs the dream, as given in the request that created
        #   it.
        #
        #   @return [String]
        required :id, String

        # @!attribute speed
        #   Inference speed mode. `fast` provides significantly faster output token
        #   generation at premium pricing. Not all models support `fast`; invalid
        #   combinations are rejected at create time.
        #
        #   @return [Symbol, Anthropic::Models::Beta::BetaDreamModelConfig::Speed, nil]
        optional :speed, enum: -> { Anthropic::Beta::BetaDreamModelConfig::Speed }

        # @!method initialize(id:, speed: nil)
        #   The model that runs a dream, from the request that created it.
        #
        #   The dream uses this model for all of its work. The response always gives the
        #   model as an object, even if the request gave only a model ID.
        #
        #   Some parameter documentations has been truncated, see
        #   {Anthropic::Models::Beta::BetaDreamModelConfig} for more details.
        #
        #   @param id [String] The ID of the model that runs the dream, as given in the request that created it
        #
        #   @param speed [Symbol, Anthropic::Models::Beta::BetaDreamModelConfig::Speed] Inference speed mode. `fast` provides significantly faster output token generati

        # Inference speed mode. `fast` provides significantly faster output token
        # generation at premium pricing. Not all models support `fast`; invalid
        # combinations are rejected at create time.
        #
        # @see Anthropic::Models::Beta::BetaDreamModelConfig#speed
        module Speed
          extend Anthropic::Internal::Type::Enum

          STANDARD = :standard
          FAST = :fast

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    BetaDreamModelConfig = Beta::BetaDreamModelConfig
  end
end
