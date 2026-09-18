# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      # @see Anthropic::Resources::Beta::Dreams#list
      class DreamListParams < Anthropic::Internal::Type::BaseModel
        extend Anthropic::Internal::Type::RequestParameters::Converter
        include Anthropic::Internal::Type::RequestParameters

        # @!attribute created_at_gt
        #   Return dreams with `created_at` strictly after this timestamp (exclusive lower
        #   bound, RFC 3339). Unset applies no lower bound.
        #
        #   @return [Time, nil]
        optional :created_at_gt, Time

        # @!attribute created_at_lt
        #   Return dreams with `created_at` strictly before this timestamp (exclusive upper
        #   bound, RFC 3339). Unset applies no upper bound.
        #
        #   @return [Time, nil]
        optional :created_at_lt, Time

        # @!attribute include_archived
        #
        #   @return [Boolean, nil]
        optional :include_archived, Anthropic::Internal::Type::Boolean

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute page
        #
        #   @return [String, nil]
        optional :page, String

        # @!attribute statuses
        #   Filter by lifecycle status. Repeat the parameter to match any of multiple
        #   statuses. Empty applies no status filter.
        #
        #   @return [Array<Symbol, Anthropic::Models::Beta::BetaDreamStatus>, nil]
        optional :statuses, -> { Anthropic::Internal::Type::ArrayOf[enum: Anthropic::Beta::BetaDreamStatus] }

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

        # @!method initialize(created_at_gt: nil, created_at_lt: nil, include_archived: nil, limit: nil, page: nil, statuses: nil, betas: nil, workspace_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Anthropic::Models::Beta::DreamListParams} for more details.
        #
        #   @param created_at_gt [Time] Return dreams with `created_at` strictly after this timestamp (exclusive lower b
        #
        #   @param created_at_lt [Time] Return dreams with `created_at` strictly before this timestamp (exclusive upper
        #
        #   @param include_archived [Boolean]
        #
        #   @param limit [Integer]
        #
        #   @param page [String]
        #
        #   @param statuses [Array<Symbol, Anthropic::Models::Beta::BetaDreamStatus>] Filter by lifecycle status. Repeat the parameter to match any of multiple status
        #
        #   @param betas [Array<Symbol, String, Anthropic::Models::AnthropicBeta>] Optional header to specify the beta version(s) you want to use.
        #
        #   @param workspace_id [String] Optional header to select the Workspace for this request. The value is a Workspa
        #
        #   @param request_options [Anthropic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
