# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaUserProfileTrustGrant < Anthropic::Internal::Type::BaseModel
        # @!attribute status
        #   Status of the trust grant.
        #
        #   @return [Symbol, Anthropic::Models::Beta::BetaUserProfileTrustGrant::Status]
        required :status, enum: -> { Anthropic::Beta::BetaUserProfileTrustGrant::Status }

        # @!method initialize(status:)
        #   The status of one trust grant on a user profile, listed in the profile's
        #   `trust_grants` map under the grant's name.
        #
        #   @param status [Symbol, Anthropic::Models::Beta::BetaUserProfileTrustGrant::Status] Status of the trust grant.

        # Status of the trust grant.
        #
        # @see Anthropic::Models::Beta::BetaUserProfileTrustGrant#status
        module Status
          extend Anthropic::Internal::Type::Enum

          ACTIVE = :active
          PENDING = :pending
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    BetaUserProfileTrustGrant = Beta::BetaUserProfileTrustGrant
  end
end
