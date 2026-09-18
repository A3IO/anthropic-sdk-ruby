# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      module MemoryStores
        class BetaManagedAgentsMemoryPreconditionFailedError < Anthropic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, Anthropic::Models::Beta::MemoryStores::BetaManagedAgentsMemoryPreconditionFailedError::Type]
          required :type,
                   enum: -> { Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryPreconditionFailedError::Type }

          # @!attribute message
          #   A human-readable explanation of why the precondition failed.
          #
          #   @return [String, nil]
          optional :message, String

          # @!method initialize(type:, message: nil)
          #   The error returned with HTTP status 409 when a request's precondition doesn't
          #   hold for the memory's current state, such as `precondition` on an update or
          #   `expected_content_sha256` on a delete.
          #
          #   The error doesn't include the memory's current state. Retrieve the memory to see
          #   its current content and `content_sha256` before you retry.
          #
          #   See the
          #   [memory guide](https://platform.claude.com/docs/en/managed-agents/memory#safe-content-edits-optimistic-concurrency)
          #   to learn more about safe content edits with content hash preconditions.
          #
          #   @param type [Symbol, Anthropic::Models::Beta::MemoryStores::BetaManagedAgentsMemoryPreconditionFailedError::Type]
          #
          #   @param message [String] A human-readable explanation of why the precondition failed.

          # @see Anthropic::Models::Beta::MemoryStores::BetaManagedAgentsMemoryPreconditionFailedError#type
          module Type
            extend Anthropic::Internal::Type::Enum

            MEMORY_PRECONDITION_FAILED_ERROR = :memory_precondition_failed_error

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
