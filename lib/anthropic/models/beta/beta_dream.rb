# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      # @see Anthropic::Resources::Beta::Dreams#create
      class BetaDream < Anthropic::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the dream (`drm_...`).
        #
        #   @return [String]
        required :id, String

        # @!attribute archived_at
        #   A timestamp in RFC 3339 format
        #
        #   @return [Time, nil]
        required :archived_at, Time, nil?: true

        # @!attribute created_at
        #   A timestamp in RFC 3339 format
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute ended_at
        #   A timestamp in RFC 3339 format
        #
        #   @return [Time, nil]
        required :ended_at, Time, nil?: true

        # @!attribute error
        #   Failure detail for a Dream whose `status` is `failed`.
        #
        #   @return [Anthropic::Models::Beta::BetaDreamError, nil]
        required :error, -> { Anthropic::Beta::BetaDreamError }, nil?: true

        # @!attribute inputs
        #   The sources that the dream reads, from the request that created it.
        #
        #   @return [Array<Anthropic::Models::Beta::BetaDreamMemoryStoreInput, Anthropic::Models::Beta::BetaDreamSessionsInput>]
        required :inputs, -> { Anthropic::Internal::Type::ArrayOf[union: Anthropic::Beta::BetaDreamInput] }

        # @!attribute instructions
        #   The guidance given when the dream was created, or `null` if none was given.
        #
        #   @return [String, nil]
        required :instructions, String, nil?: true

        # @!attribute model
        #   Model identifier and configuration applied to every pipeline stage. Same wire
        #   shape as the Agents API ModelConfig.
        #
        #   @return [Anthropic::Models::Beta::BetaDreamModelConfig]
        required :model, -> { Anthropic::Beta::BetaDreamModelConfig }

        # @!attribute output_behavior
        #   Which memory store a dream writes its result to. Defaults to `create_new` when
        #   left out of a create request.
        #
        #   @return [Anthropic::Models::Beta::BetaOutputBehaviorCreateNew, Anthropic::Models::Beta::BetaOutputBehaviorUpdateExisting]
        required :output_behavior, union: -> { Anthropic::Beta::BetaOutputBehavior }

        # @!attribute outputs
        #   The memory store that holds the dream's result, as a one-item array, or an empty
        #   array until the dream records that memory store.
        #
        #   The array is empty while the dream is `pending` and for a short time after it
        #   starts `running`. It can stay empty if the dream fails or is canceled before
        #   then. The memory store holds the complete result only once `status` is
        #   `completed`.
        #
        #   See the
        #   [Dreams guide](https://platform.claude.com/docs/en/managed-agents/dreams#use-the-output)
        #   for how to review and use the result.
        #
        #   @return [Array<Anthropic::Models::Beta::BetaDreamOutput>]
        required :outputs, -> { Anthropic::Internal::Type::ArrayOf[Anthropic::Beta::BetaDreamOutput] }

        # @!attribute session_id
        #   The ID of the session that runs the dream (`sesn_...`), or `null` if that
        #   session hasn't started.
        #
        #   Stream that session's events to follow what the dream reads and writes.
        #
        #   See the
        #   [Dreams guide](https://platform.claude.com/docs/en/managed-agents/dreams#watch-the-pipeline-run)
        #   for how to watch a running dream.
        #
        #   @return [String, nil]
        required :session_id, String, nil?: true

        # @!attribute status
        #   Lifecycle status of a Dream.
        #
        #   @return [Symbol, Anthropic::Models::Beta::BetaDreamStatus]
        required :status, enum: -> { Anthropic::Beta::BetaDreamStatus }

        # @!attribute type
        #
        #   @return [Symbol, Anthropic::Models::Beta::BetaDream::Type]
        required :type, enum: -> { Anthropic::Beta::BetaDream::Type }

        # @!attribute usage
        #   Cumulative token usage for the dream across every pipeline stage.
        #
        #   @return [Anthropic::Models::Beta::BetaDreamUsage]
        required :usage, -> { Anthropic::Beta::BetaDreamUsage }

        # @!method initialize(id:, archived_at:, created_at:, ended_at:, error:, inputs:, instructions:, model:, output_behavior:, outputs:, session_id:, status:, type:, usage:)
        #   An asynchronous memory-consolidation job that reads a memory store plus a set of
        #   session transcripts and writes consolidated memories into an output memory store
        #   — a new store by default, or an existing store chosen via output_behavior. The
        #   Dreams API is in research preview: the request and response shapes are volatile
        #   and may change without the deprecation period that applies to
        #   generally-available endpoints.
        #
        #   Some parameter documentations has been truncated, see
        #   {Anthropic::Models::Beta::BetaDream} for more details.
        #
        #   @param id [String] The unique ID of the dream (`drm_...`).
        #
        #   @param archived_at [Time, nil] A timestamp in RFC 3339 format
        #
        #   @param created_at [Time] A timestamp in RFC 3339 format
        #
        #   @param ended_at [Time, nil] A timestamp in RFC 3339 format
        #
        #   @param error [Anthropic::Models::Beta::BetaDreamError, nil] Failure detail for a Dream whose `status` is `failed`.
        #
        #   @param inputs [Array<Anthropic::Models::Beta::BetaDreamMemoryStoreInput, Anthropic::Models::Beta::BetaDreamSessionsInput>] The sources that the dream reads, from the request that created it.
        #
        #   @param instructions [String, nil] The guidance given when the dream was created, or `null` if none was given.
        #
        #   @param model [Anthropic::Models::Beta::BetaDreamModelConfig] Model identifier and configuration applied to every pipeline stage. Same wire sh
        #
        #   @param output_behavior [Anthropic::Models::Beta::BetaOutputBehaviorCreateNew, Anthropic::Models::Beta::BetaOutputBehaviorUpdateExisting] Which memory store a dream writes its result to. Defaults to `create_new` when l
        #
        #   @param outputs [Array<Anthropic::Models::Beta::BetaDreamOutput>] The memory store that holds the dream's result, as a one-item array, or an empty
        #
        #   @param session_id [String, nil] The ID of the session that runs the dream (`sesn_...`), or `null` if that sessio
        #
        #   @param status [Symbol, Anthropic::Models::Beta::BetaDreamStatus] Lifecycle status of a Dream.
        #
        #   @param type [Symbol, Anthropic::Models::Beta::BetaDream::Type]
        #
        #   @param usage [Anthropic::Models::Beta::BetaDreamUsage] Cumulative token usage for the dream across every pipeline stage.

        # @see Anthropic::Models::Beta::BetaDream#type
        module Type
          extend Anthropic::Internal::Type::Enum

          DREAM = :dream

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    BetaDream = Beta::BetaDream
  end
end
