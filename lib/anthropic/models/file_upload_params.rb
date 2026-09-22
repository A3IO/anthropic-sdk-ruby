# frozen_string_literal: true

module Anthropic
  module Models
    # @see Anthropic::Resources::Files#upload
    class FileUploadParams < Anthropic::Internal::Type::BaseModel
      extend Anthropic::Internal::Type::RequestParameters::Converter
      include Anthropic::Internal::Type::RequestParameters

      # @!attribute file
      #   The file to upload. Only the final path component of the part's `filename` is
      #   kept; an absent or empty `filename` is replaced with `unnamed` plus the
      #   extension for the file's stored `mime_type`, when known.
      #
      #   @return [Pathname, StringIO, IO, String, Anthropic::FilePart]
      required :file, Anthropic::Internal::Type::FileInput

      # @!attribute expires_in_seconds
      #   Seconds from upload until the file expires and its bytes become permanently
      #   unavailable. Must be between 3600 (one hour) and 7776000 (ninety days).
      #
      #   @return [Integer, nil]
      optional :expires_in_seconds, Integer

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

      # @!method initialize(file:, expires_in_seconds: nil, workspace_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Anthropic::Models::FileUploadParams} for more details.
      #
      #   @param file [Pathname, StringIO, IO, String, Anthropic::FilePart] The file to upload. Only the final path component of the part's `filename` is ke
      #
      #   @param expires_in_seconds [Integer] Seconds from upload until the file expires and its bytes become permanently unav
      #
      #   @param workspace_id [String] Optional header to select the Workspace for this request. The value is a Workspa
      #
      #   @param request_options [Anthropic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
