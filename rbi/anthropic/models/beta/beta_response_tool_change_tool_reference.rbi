# typed: strong

module Anthropic
  module Models
    BetaResponseToolChangeToolReference =
      Beta::BetaResponseToolChangeToolReference

    module Beta
      class BetaResponseToolChangeToolReference < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaResponseToolChangeToolReference,
              Anthropic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Symbol) }
        attr_accessor :type

        # Reference to a single tool, by the name the model uses to call it, as a
        # `compaction` block's `tool_changes` entry reports it: a tool declared in `tools`
        # or defined by an earlier `tool_addition` block. Send it back unchanged with the
        # block.
        sig { params(name: String, type: Symbol).returns(T.attached_class) }
        def self.new(name:, type: :tool_reference)
        end

        sig { override.returns({ name: String, type: Symbol }) }
        def to_hash
        end
      end
    end
  end
end
