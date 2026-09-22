# typed: strong

module Anthropic
  module Models
    BetaResponseTool = Beta::BetaResponseTool

    module Beta
      class BetaResponseTool < Anthropic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::BetaResponseTool,
              Anthropic::Internal::AnyHash
            )
          end

        # [JSON schema](https://json-schema.org/draft/2020-12) for this tool's input.
        #
        # This defines the shape of the `input` that your tool accepts and that the model
        # will produce.
        sig { returns(Anthropic::Beta::BetaResponseToolInputSchema) }
        attr_reader :input_schema

        sig do
          params(
            input_schema: Anthropic::Beta::BetaResponseToolInputSchema::OrHash
          ).void
        end
        attr_writer :input_schema

        # Name of the tool.
        #
        # This is how the tool will be called by the model and in `tool_use` blocks.
        sig { returns(String) }
        attr_accessor :name

        sig do
          returns(
            T.nilable(
              T::Array[
                Anthropic::Beta::BetaResponseTool::AllowedCaller::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :allowed_callers

        sig do
          params(
            allowed_callers:
              T::Array[
                Anthropic::Beta::BetaResponseTool::AllowedCaller::OrSymbol
              ]
          ).void
        end
        attr_writer :allowed_callers

        # If true, tool will not be included in initial system prompt. Only loaded when
        # returned via tool_reference from tool search.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :defer_loading

        sig { params(defer_loading: T::Boolean).void }
        attr_writer :defer_loading

        # Description of what this tool does.
        #
        # Tool descriptions should be as detailed as possible. The more information that
        # the model has about what the tool is and how to use it, the better it will
        # perform. You can use natural language descriptions to reinforce important
        # aspects of the tool input JSON schema.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Enable eager input streaming for this tool. When true, tool input parameters
        # will be streamed incrementally as they are generated, and types will be inferred
        # on-the-fly rather than buffering the full JSON output. When false, streaming is
        # disabled for this tool even if the fine-grained-tool-streaming beta is active.
        # When null (default), uses the default behavior based on beta headers.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :eager_input_streaming

        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_reader :input_examples

        sig do
          params(input_examples: T::Array[T::Hash[Symbol, T.anything]]).void
        end
        attr_writer :input_examples

        # When true, guarantees schema validation on tool names and inputs
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :strict

        sig { params(strict: T::Boolean).void }
        attr_writer :strict

        sig do
          returns(
            T.nilable(Anthropic::Beta::BetaResponseTool::Type::TaggedSymbol)
          )
        end
        attr_accessor :type

        # A custom tool definition, as sent.
        sig do
          params(
            input_schema: Anthropic::Beta::BetaResponseToolInputSchema::OrHash,
            name: String,
            allowed_callers:
              T::Array[
                Anthropic::Beta::BetaResponseTool::AllowedCaller::OrSymbol
              ],
            defer_loading: T::Boolean,
            description: String,
            eager_input_streaming: T.nilable(T::Boolean),
            input_examples: T::Array[T::Hash[Symbol, T.anything]],
            strict: T::Boolean,
            type: T.nilable(Anthropic::Beta::BetaResponseTool::Type::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # [JSON schema](https://json-schema.org/draft/2020-12) for this tool's input.
          #
          # This defines the shape of the `input` that your tool accepts and that the model
          # will produce.
          input_schema:,
          # Name of the tool.
          #
          # This is how the tool will be called by the model and in `tool_use` blocks.
          name:,
          allowed_callers: nil,
          # If true, tool will not be included in initial system prompt. Only loaded when
          # returned via tool_reference from tool search.
          defer_loading: nil,
          # Description of what this tool does.
          #
          # Tool descriptions should be as detailed as possible. The more information that
          # the model has about what the tool is and how to use it, the better it will
          # perform. You can use natural language descriptions to reinforce important
          # aspects of the tool input JSON schema.
          description: nil,
          # Enable eager input streaming for this tool. When true, tool input parameters
          # will be streamed incrementally as they are generated, and types will be inferred
          # on-the-fly rather than buffering the full JSON output. When false, streaming is
          # disabled for this tool even if the fine-grained-tool-streaming beta is active.
          # When null (default), uses the default behavior based on beta headers.
          eager_input_streaming: nil,
          input_examples: nil,
          # When true, guarantees schema validation on tool names and inputs
          strict: nil,
          type: nil
        )
        end

        sig do
          override.returns(
            {
              input_schema: Anthropic::Beta::BetaResponseToolInputSchema,
              name: String,
              allowed_callers:
                T::Array[
                  Anthropic::Beta::BetaResponseTool::AllowedCaller::TaggedSymbol
                ],
              defer_loading: T::Boolean,
              description: String,
              eager_input_streaming: T.nilable(T::Boolean),
              input_examples: T::Array[T::Hash[Symbol, T.anything]],
              strict: T::Boolean,
              type:
                T.nilable(Anthropic::Beta::BetaResponseTool::Type::TaggedSymbol)
            }
          )
        end
        def to_hash
        end

        # Specifies who can invoke a tool.
        #
        # Values: direct: The model can call this tool directly. code_execution_20250825:
        # The tool can be called from the code execution environment (v1).
        # code_execution_20260120: The tool can be called from the code execution
        # environment (v2 with persistence). code_execution_20260521: The tool can be
        # called from the code execution environment (v2 with persistence).
        module AllowedCaller
          extend Anthropic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Anthropic::Beta::BetaResponseTool::AllowedCaller)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DIRECT =
            T.let(
              :direct,
              Anthropic::Beta::BetaResponseTool::AllowedCaller::TaggedSymbol
            )
          CODE_EXECUTION_20250825 =
            T.let(
              :code_execution_20250825,
              Anthropic::Beta::BetaResponseTool::AllowedCaller::TaggedSymbol
            )
          CODE_EXECUTION_20260120 =
            T.let(
              :code_execution_20260120,
              Anthropic::Beta::BetaResponseTool::AllowedCaller::TaggedSymbol
            )
          CODE_EXECUTION_20260521 =
            T.let(
              :code_execution_20260521,
              Anthropic::Beta::BetaResponseTool::AllowedCaller::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Anthropic::Beta::BetaResponseTool::AllowedCaller::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend Anthropic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Anthropic::Beta::BetaResponseTool::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOM =
            T.let(
              :custom,
              Anthropic::Beta::BetaResponseTool::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Anthropic::Beta::BetaResponseTool::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
