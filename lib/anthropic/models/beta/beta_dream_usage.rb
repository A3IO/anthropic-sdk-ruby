# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaDreamUsage < Anthropic::Internal::Type::BaseModel
        # @!attribute cache_creation_input_tokens
        #   The dream's input tokens that were written to the prompt cache, for both the
        #   5-minute and 1-hour cache durations.
        #
        #   @return [Integer]
        required :cache_creation_input_tokens, Integer

        # @!attribute cache_read_input_tokens
        #   The dream's input tokens that were read from the prompt cache.
        #
        #   @return [Integer]
        required :cache_read_input_tokens, Integer

        # @!attribute input_tokens
        #   The dream's input tokens that weren't read from or written to the prompt cache.
        #
        #   @return [Integer]
        required :input_tokens, Integer

        # @!attribute output_tokens
        #   The tokens that the model generated for the dream.
        #
        #   @return [Integer]
        required :output_tokens, Integer

        # @!method initialize(cache_creation_input_tokens:, cache_read_input_tokens:, input_tokens:, output_tokens:)
        #   The tokens that a dream has used so far.
        #
        #   The counts are zero while the dream is `pending` and update while it is
        #   `running`. They can keep changing after a cancel.
        #
        #   See the
        #   [Dreams guide](https://platform.claude.com/docs/en/managed-agents/dreams#billing)
        #   for how dreams are billed. See the
        #   [prompt caching guide](https://platform.claude.com/docs/en/build-with-claude/prompt-caching#tracking-cache-performance)
        #   for how the input token counts add up.
        #
        #   Some parameter documentations has been truncated, see
        #   {Anthropic::Models::Beta::BetaDreamUsage} for more details.
        #
        #   @param cache_creation_input_tokens [Integer] The dream's input tokens that were written to the prompt cache, for both the 5-m
        #
        #   @param cache_read_input_tokens [Integer] The dream's input tokens that were read from the prompt cache.
        #
        #   @param input_tokens [Integer] The dream's input tokens that weren't read from or written to the prompt cache.
        #
        #   @param output_tokens [Integer] The tokens that the model generated for the dream.
      end
    end

    BetaDreamUsage = Beta::BetaDreamUsage
  end
end
