# frozen_string_literal: true

module Anthropic
  module Models
    module Messages
      # @see Anthropic::Resources::Messages::Batches#list
      class BatchListParams < Anthropic::Internal::Type::BaseModel
        extend Anthropic::Internal::Type::RequestParameters::Converter
        include Anthropic::Internal::Type::RequestParameters

        # @!attribute after_id
        #   ID of the object to use as a cursor for pagination. When provided, returns the
        #   page of results immediately after this object.
        #
        #   @return [String, nil]
        optional :after_id, String

        # @!attribute before_id
        #   ID of the object to use as a cursor for pagination. When provided, returns the
        #   page of results immediately before this object.
        #
        #   @return [String, nil]
        optional :before_id, String

        # @!attribute limit
        #   Number of items to return per page.
        #
        #   Defaults to `20`. Ranges from `1` to `1000`.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

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

        # @!method initialize(after_id: nil, before_id: nil, limit: nil, workspace_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Anthropic::Models::Messages::BatchListParams} for more details.
        #
        #   @param after_id [String] ID of the object to use as a cursor for pagination. When provided, returns the p
        #
        #   @param before_id [String] ID of the object to use as a cursor for pagination. When provided, returns the p
        #
        #   @param limit [Integer] Number of items to return per page.
        #
        #   @param workspace_id [String] Optional header to select the Workspace for this request. The value is a Workspa
        #
        #   @param request_options [Anthropic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
