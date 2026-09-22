# typed: strong

module Anthropic
  module Models
    BetaOutputBehaviorCreateNew = Beta::BetaOutputBehaviorCreateNew

    module Beta
      class BetaOutputBehaviorCreateNew < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaOutputBehaviorCreateNew,
              Anthropic::Internal::AnyHash
            )
          end

        sig do
          returns(Anthropic::Beta::BetaOutputBehaviorCreateNew::Type::OrSymbol)
        end
        attr_accessor :type

        # Write the result to a new memory store that starts as a copy of the input memory
        # store. This is the default.
        #
        # The new memory store is in the same workspace as the dream. The dream doesn't
        # change the input memory store.
        sig do
          params(
            type: Anthropic::Beta::BetaOutputBehaviorCreateNew::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(type:)
        end

        sig do
          override.returns(
            {
              type: Anthropic::Beta::BetaOutputBehaviorCreateNew::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Anthropic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Anthropic::Beta::BetaOutputBehaviorCreateNew::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATE_NEW =
            T.let(
              :create_new,
              Anthropic::Beta::BetaOutputBehaviorCreateNew::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Anthropic::Beta::BetaOutputBehaviorCreateNew::Type::TaggedSymbol
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
