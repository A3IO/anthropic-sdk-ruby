# typed: strong

module Anthropic
  module Models
    BetaDreamModelConfig = Beta::BetaDreamModelConfig

    module Beta
      class BetaDreamModelConfig < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaDreamModelConfig,
              Anthropic::Internal::AnyHash
            )
          end

        # The ID of the model that runs the dream, as given in the request that created
        # it.
        sig { returns(String) }
        attr_accessor :id

        # Inference speed mode. `fast` provides significantly faster output token
        # generation at premium pricing. Not all models support `fast`; invalid
        # combinations are rejected at create time.
        sig do
          returns(
            T.nilable(
              Anthropic::Beta::BetaDreamModelConfig::Speed::TaggedSymbol
            )
          )
        end
        attr_reader :speed

        sig do
          params(
            speed: Anthropic::Beta::BetaDreamModelConfig::Speed::OrSymbol
          ).void
        end
        attr_writer :speed

        # The model that runs a dream, from the request that created it.
        #
        # The dream uses this model for all of its work. The response always gives the
        # model as an object, even if the request gave only a model ID.
        sig do
          params(
            id: String,
            speed: Anthropic::Beta::BetaDreamModelConfig::Speed::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the model that runs the dream, as given in the request that created
          # it.
          id:,
          # Inference speed mode. `fast` provides significantly faster output token
          # generation at premium pricing. Not all models support `fast`; invalid
          # combinations are rejected at create time.
          speed: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              speed: Anthropic::Beta::BetaDreamModelConfig::Speed::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Inference speed mode. `fast` provides significantly faster output token
        # generation at premium pricing. Not all models support `fast`; invalid
        # combinations are rejected at create time.
        module Speed
          extend Anthropic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Anthropic::Beta::BetaDreamModelConfig::Speed)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STANDARD =
            T.let(
              :standard,
              Anthropic::Beta::BetaDreamModelConfig::Speed::TaggedSymbol
            )
          FAST =
            T.let(
              :fast,
              Anthropic::Beta::BetaDreamModelConfig::Speed::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Anthropic::Beta::BetaDreamModelConfig::Speed::TaggedSymbol
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
