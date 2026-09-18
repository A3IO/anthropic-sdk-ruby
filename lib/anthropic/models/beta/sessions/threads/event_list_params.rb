# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      module Sessions
        module Threads
          # @see Anthropic::Resources::Beta::Sessions::Threads::Events#list
          class EventListParams < Anthropic::Internal::Type::BaseModel
            extend Anthropic::Internal::Type::RequestParameters::Converter
            include Anthropic::Internal::Type::RequestParameters

            # @!attribute session_id
            #
            #   @return [String]
            required :session_id, String

            # @!attribute thread_id
            #
            #   @return [String]
            required :thread_id, String

            # @!attribute limit
            #
            #   @return [Integer, nil]
            optional :limit, Integer

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
            #
            #   @return [String, nil]
            optional :workspace_id, String

            # @!method initialize(session_id:, thread_id:, limit: nil, page: nil, betas: nil, workspace_id: nil, request_options: {})
            #   @param session_id [String]
            #
            #   @param thread_id [String]
            #
            #   @param limit [Integer]
            #
            #   @param page [String]
            #
            #   @param betas [Array<Symbol, String, Anthropic::Models::AnthropicBeta>] Optional header to specify the beta version(s) you want to use.
            #
            #   @param workspace_id [String]
            #
            #   @param request_options [Anthropic::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
