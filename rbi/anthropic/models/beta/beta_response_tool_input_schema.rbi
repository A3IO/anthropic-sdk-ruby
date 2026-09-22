# typed: strong

module Anthropic
  module Models
    BetaResponseToolInputSchema = Beta::BetaResponseToolInputSchema

    module Beta
      class BetaResponseToolInputSchema < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaResponseToolInputSchema,
              Anthropic::Internal::AnyHash
            )
          end

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :properties

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :required

        # [JSON schema](https://json-schema.org/draft/2020-12) for this tool's input.
        #
        # This defines the shape of the `input` that your tool accepts and that the model
        # will produce.
        sig do
          params(
            properties: T.nilable(T::Hash[Symbol, T.anything]),
            required: T.nilable(T::Array[String]),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(properties: nil, required: nil, type: :object)
        end

        sig do
          override.returns(
            {
              type: Symbol,
              properties: T.nilable(T::Hash[Symbol, T.anything]),
              required: T.nilable(T::Array[String])
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
