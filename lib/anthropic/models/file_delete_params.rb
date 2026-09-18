# frozen_string_literal: true

module Anthropic
  module Models
    # @see Anthropic::Resources::Files#delete
    class FileDeleteParams < Anthropic::Internal::Type::BaseModel
      extend Anthropic::Internal::Type::RequestParameters::Converter
      include Anthropic::Internal::Type::RequestParameters

      # @!attribute file_id
      #   ID of the File.
      #
      #   @return [String]
      required :file_id, String

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

      # @!method initialize(file_id:, workspace_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Anthropic::Models::FileDeleteParams} for more details.
      #
      #   @param file_id [String] ID of the File.
      #
      #   @param workspace_id [String] Optional header to select the Workspace for this request. The value is a Workspa
      #
      #   @param request_options [Anthropic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
