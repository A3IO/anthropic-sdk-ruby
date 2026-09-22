# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaMCPTool < Anthropic::Internal::Type::BaseModel
        # @!attribute input_schema
        #
        #   @return [Hash{Symbol=>Object}]
        required :input_schema, Anthropic::Internal::Type::HashOf[Anthropic::Internal::Type::Unknown]

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(input_schema:, name:, description: nil)
        #   A tool as an MCP server lists it: its name on that server, its description, and
        #   its input schema.
        #
        #   @param input_schema [Hash{Symbol=>Object}]
        #   @param name [String]
        #   @param description [String]
      end
    end

    BetaMCPTool = Beta::BetaMCPTool
  end
end
