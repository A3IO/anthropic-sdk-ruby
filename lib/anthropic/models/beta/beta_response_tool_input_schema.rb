# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaResponseToolInputSchema < Anthropic::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, :object]
        required :type, const: :object

        # @!attribute properties
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :properties,
                 Anthropic::Internal::Type::HashOf[Anthropic::Internal::Type::Unknown],
                 nil?: true

        # @!attribute required
        #
        #   @return [Array<String>, nil]
        optional :required, Anthropic::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(properties: nil, required: nil, type: :object)
        #   [JSON schema](https://json-schema.org/draft/2020-12) for this tool's input.
        #
        #   This defines the shape of the `input` that your tool accepts and that the model
        #   will produce.
        #
        #   @param properties [Hash{Symbol=>Object}, nil]
        #   @param required [Array<String>, nil]
        #   @param type [Symbol, :object]
      end
    end

    BetaResponseToolInputSchema = Beta::BetaResponseToolInputSchema
  end
end
