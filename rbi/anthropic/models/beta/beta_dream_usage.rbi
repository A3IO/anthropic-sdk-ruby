# typed: strong

module Anthropic
  module Models
    BetaDreamUsage = Beta::BetaDreamUsage

    module Beta
      class BetaDreamUsage < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Anthropic::Beta::BetaDreamUsage, Anthropic::Internal::AnyHash)
          end

        # The dream's input tokens that were written to the prompt cache, for both the
        # 5-minute and 1-hour cache durations.
        sig { returns(Integer) }
        attr_accessor :cache_creation_input_tokens

        # The dream's input tokens that were read from the prompt cache.
        sig { returns(Integer) }
        attr_accessor :cache_read_input_tokens

        # The dream's input tokens that weren't read from or written to the prompt cache.
        sig { returns(Integer) }
        attr_accessor :input_tokens

        # The tokens that the model generated for the dream.
        sig { returns(Integer) }
        attr_accessor :output_tokens

        # The tokens that a dream has used so far.
        #
        # The counts are zero while the dream is `pending` and update while it is
        # `running`. They can keep changing after a cancel.
        #
        # See the
        # [Dreams guide](https://platform.claude.com/docs/en/managed-agents/dreams#billing)
        # for how dreams are billed. See the
        # [prompt caching guide](https://platform.claude.com/docs/en/build-with-claude/prompt-caching#tracking-cache-performance)
        # for how the input token counts add up.
        sig do
          params(
            cache_creation_input_tokens: Integer,
            cache_read_input_tokens: Integer,
            input_tokens: Integer,
            output_tokens: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The dream's input tokens that were written to the prompt cache, for both the
          # 5-minute and 1-hour cache durations.
          cache_creation_input_tokens:,
          # The dream's input tokens that were read from the prompt cache.
          cache_read_input_tokens:,
          # The dream's input tokens that weren't read from or written to the prompt cache.
          input_tokens:,
          # The tokens that the model generated for the dream.
          output_tokens:
        )
        end

        sig do
          override.returns(
            {
              cache_creation_input_tokens: Integer,
              cache_read_input_tokens: Integer,
              input_tokens: Integer,
              output_tokens: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
