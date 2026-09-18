# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      # @see Anthropic::Resources::Beta::UserProfiles#list
      class UserProfileListParams < Anthropic::Internal::Type::BaseModel
        extend Anthropic::Internal::Type::RequestParameters::Converter
        include Anthropic::Internal::Type::RequestParameters

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute order
        #   ListOrder enum
        #
        #   @return [Symbol, Anthropic::Models::Beta::UserProfileListParams::Order, nil]
        optional :order, enum: -> { Anthropic::Beta::UserProfileListParams::Order }

        # @!attribute order_by
        #   Sort field for listing user profiles: `created_at` (default) or `name`
        #   (case-insensitive; profiles without a name sort last).
        #
        #   @return [Symbol, Anthropic::Models::Beta::UserProfileListParams::OrderBy, nil]
        optional :order_by, enum: -> { Anthropic::Beta::UserProfileListParams::OrderBy }

        # @!attribute page
        #
        #   @return [String, nil]
        optional :page, String

        # @!attribute betas
        #   Optional header to specify the beta version(s) you want to use.
        #
        #   @return [Array<Symbol, String, Anthropic::Models::AnthropicBeta>, nil]
        optional :betas, -> { Anthropic::Internal::Type::ArrayOf[union: Anthropic::AnthropicBeta] }

        # @!attribute workspace_id
        #   Optional header to select the Workspace for this request. The value is a
        #   Workspace ID (for example, `wrkspc_011CZkZaBF1tNoB5wlCeusgy`).
        #
        #   Only needed for credentials that can act on more than one Workspace. A
        #   credential that belongs to a specific Workspace may omit it; if sent, it must
        #   match that Workspace.
        #
        #   @return [String, nil]
        optional :workspace_id, String

        # @!method initialize(limit: nil, order: nil, order_by: nil, page: nil, betas: nil, workspace_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Anthropic::Models::Beta::UserProfileListParams} for more details.
        #
        #   @param limit [Integer]
        #
        #   @param order [Symbol, Anthropic::Models::Beta::UserProfileListParams::Order] ListOrder enum
        #
        #   @param order_by [Symbol, Anthropic::Models::Beta::UserProfileListParams::OrderBy] Sort field for listing user profiles: `created_at` (default) or `name` (case-ins
        #
        #   @param page [String]
        #
        #   @param betas [Array<Symbol, String, Anthropic::Models::AnthropicBeta>] Optional header to specify the beta version(s) you want to use.
        #
        #   @param workspace_id [String] Optional header to select the Workspace for this request. The value is a Workspa
        #
        #   @param request_options [Anthropic::RequestOptions, Hash{Symbol=>Object}]

        # ListOrder enum
        module Order
          extend Anthropic::Internal::Type::Enum

          ASC = :asc
          DESC = :desc

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sort field for listing user profiles: `created_at` (default) or `name`
        # (case-insensitive; profiles without a name sort last).
        module OrderBy
          extend Anthropic::Internal::Type::Enum

          CREATED_AT = :created_at
          NAME = :name

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
