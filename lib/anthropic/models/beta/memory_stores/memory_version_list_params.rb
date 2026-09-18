# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      module MemoryStores
        # @see Anthropic::Resources::Beta::MemoryStores::MemoryVersions#list
        class MemoryVersionListParams < Anthropic::Internal::Type::BaseModel
          extend Anthropic::Internal::Type::RequestParameters::Converter
          include Anthropic::Internal::Type::RequestParameters

          # @!attribute memory_store_id
          #
          #   @return [String]
          required :memory_store_id, String

          # @!attribute api_key_id
          #
          #   @return [String, nil]
          optional :api_key_id, String

          # @!attribute created_at_gte
          #   Return versions created at or after this time (inclusive).
          #
          #   @return [Time, nil]
          optional :created_at_gte, Time

          # @!attribute created_at_lte
          #   Return versions created at or before this time (inclusive).
          #
          #   @return [Time, nil]
          optional :created_at_lte, Time

          # @!attribute limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute memory_id
          #
          #   @return [String, nil]
          optional :memory_id, String

          # @!attribute operation
          #   The kind of mutation a `memory_version` records. Every non-no-op mutation to a
          #   memory appends exactly one version row with one of these values.
          #
          #   @return [Symbol, Anthropic::Models::Beta::MemoryStores::BetaManagedAgentsMemoryVersionOperation, nil]
          optional :operation, enum: -> { Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryVersionOperation }

          # @!attribute page
          #
          #   @return [String, nil]
          optional :page, String

          # @!attribute service_account_id
          #
          #   @return [String, nil]
          optional :service_account_id, String

          # @!attribute session_id
          #
          #   @return [String, nil]
          optional :session_id, String

          # @!attribute view
          #   Selects which projection of a `memory` or `memory_version` the server returns.
          #   `basic` returns the object with `content` set to `null`; `full` populates
          #   `content`. When omitted, the default is endpoint-specific: retrieve operations
          #   default to `full`; list, create, and update operations default to `basic`.
          #   Listing with `view=full` caps `limit` at 20.
          #
          #   @return [Symbol, Anthropic::Models::Beta::MemoryStores::BetaManagedAgentsMemoryView, nil]
          optional :view, enum: -> { Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryView }

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

          # @!method initialize(memory_store_id:, api_key_id: nil, created_at_gte: nil, created_at_lte: nil, limit: nil, memory_id: nil, operation: nil, page: nil, service_account_id: nil, session_id: nil, view: nil, betas: nil, workspace_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Anthropic::Models::Beta::MemoryStores::MemoryVersionListParams} for more
          #   details.
          #
          #   @param memory_store_id [String]
          #
          #   @param api_key_id [String]
          #
          #   @param created_at_gte [Time] Return versions created at or after this time (inclusive).
          #
          #   @param created_at_lte [Time] Return versions created at or before this time (inclusive).
          #
          #   @param limit [Integer]
          #
          #   @param memory_id [String]
          #
          #   @param operation [Symbol, Anthropic::Models::Beta::MemoryStores::BetaManagedAgentsMemoryVersionOperation] The kind of mutation a `memory_version` records. Every non-no-op mutation to a m
          #
          #   @param page [String]
          #
          #   @param service_account_id [String]
          #
          #   @param session_id [String]
          #
          #   @param view [Symbol, Anthropic::Models::Beta::MemoryStores::BetaManagedAgentsMemoryView] Selects which projection of a `memory` or `memory_version` the server returns. `
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
end
