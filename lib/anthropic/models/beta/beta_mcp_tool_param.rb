# frozen_string_literal: true

module Anthropic
  module Models
    module Beta
      class BetaMCPToolParam < Anthropic::Internal::Type::BaseModel
        # @!attribute input_schema
        #   The tool's input schema as the MCP server lists it, verbatim.
        #
        #   @return [Hash{Symbol=>Object}]
        required :input_schema, Anthropic::Internal::Type::HashOf[Anthropic::Internal::Type::Unknown]

        # @!attribute name
        #   The tool's name as the MCP server lists it (not prefixed with the server name).
        #
        #   @return [String]
        required :name, String

        # @!attribute description
        #   The tool's description as the MCP server lists it.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!method initialize(input_schema:, name:, description: nil)
        #   A tool as an MCP server lists it: its name on that server, its description, and
        #   its input schema.
        #
        #   @param input_schema [Hash{Symbol=>Object}] The tool's input schema as the MCP server lists it, verbatim.
        #
        #   @param name [String] The tool's name as the MCP server lists it (not prefixed with the server name).
        #
        #   @param description [String, nil] The tool's description as the MCP server lists it.
      end
    end

    BetaMCPToolParam = Beta::BetaMCPToolParam
  end
end
