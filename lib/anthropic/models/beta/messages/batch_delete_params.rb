# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      module Messages
        # @see Anthropic::Resources::Beta::Messages::Batches#delete
        class BatchDeleteParams < Anthropic::Internal::Type::BaseModel
          extend Anthropic::Internal::Type::RequestParameters::Converter
          include Anthropic::Internal::Type::RequestParameters

          # @!attribute message_batch_id
          #   ID of the Message Batch.
          #
          #   @return [String]
          required :message_batch_id, String

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

          # @!method initialize(message_batch_id:, betas: nil, workspace_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Anthropic::Models::Beta::Messages::BatchDeleteParams} for more details.
          #
          #   @param message_batch_id [String] ID of the Message Batch.
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
