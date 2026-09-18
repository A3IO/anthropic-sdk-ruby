# typed: strong

module Anthropic
  module Models
    module Beta
      module MemoryStores
        class BetaManagedAgentsMemoryPreconditionFailedError < Anthropic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryPreconditionFailedError,
                Anthropic::Internal::AnyHash
              )
            end

          sig do
            returns(
              Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryPreconditionFailedError::Type::OrSymbol
            )
          end
          attr_accessor :type

          # A human-readable explanation of why the precondition failed.
          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          # The error returned with HTTP status 409 when a request's precondition doesn't
          # hold for the memory's current state, such as `precondition` on an update or
          # `expected_content_sha256` on a delete.
          #
          # The error doesn't include the memory's current state. Retrieve the memory to see
          # its current content and `content_sha256` before you retry.
          #
          # See the
          # [memory guide](https://platform.claude.com/docs/en/managed-agents/memory#safe-content-edits-optimistic-concurrency)
          # to learn more about safe content edits with content hash preconditions.
          sig do
            params(
              type:
                Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryPreconditionFailedError::Type::OrSymbol,
              message: String
            ).returns(T.attached_class)
          end
          def self.new(
            type:,
            # A human-readable explanation of why the precondition failed.
            message: nil
          )
          end

          sig do
            override.returns(
              {
                type:
                  Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryPreconditionFailedError::Type::OrSymbol,
                message: String
              }
            )
          end
          def to_hash
          end

          module Type
            extend Anthropic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryPreconditionFailedError::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MEMORY_PRECONDITION_FAILED_ERROR =
              T.let(
                :memory_precondition_failed_error,
                Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryPreconditionFailedError::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryPreconditionFailedError::Type::TaggedSymbol
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
end
