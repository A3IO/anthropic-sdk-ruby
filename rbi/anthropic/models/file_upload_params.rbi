# typed: strong

module Anthropic
  module Models
    class FileUploadParams < Anthropic::Internal::Type::BaseModel
      extend Anthropic::Internal::Type::RequestParameters::Converter
      include Anthropic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Anthropic::FileUploadParams, Anthropic::Internal::AnyHash)
        end

      # The file to upload. Only the final path component of the part's `filename` is
      # kept; an absent or empty `filename` is replaced with `unnamed` plus the
      # extension for the file's stored `mime_type`, when known.
      sig { returns(Anthropic::Internal::FileInput) }
      attr_accessor :file

      # Seconds from upload until the file expires and its bytes become permanently
      # unavailable. Must be between 3600 (one hour) and 7776000 (ninety days).
      sig { returns(T.nilable(Integer)) }
      attr_reader :expires_in_seconds

      sig { params(expires_in_seconds: Integer).void }
      attr_writer :expires_in_seconds

      # Optional header to select the Workspace for this request. The value is a
      # Workspace ID (for example, `wrkspc_011CZkZaBF1tNoB5wlCeusgy`).
      #
      # Only needed for credentials that can act on more than one Workspace. A
      # credential that belongs to a specific Workspace may omit it; if sent, it must
      # match that Workspace.
      sig { returns(T.nilable(String)) }
      attr_reader :workspace_id

      sig { params(workspace_id: String).void }
      attr_writer :workspace_id

      sig do
        params(
          file: Anthropic::Internal::FileInput,
          expires_in_seconds: Integer,
          workspace_id: String,
          request_options: Anthropic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The file to upload. Only the final path component of the part's `filename` is
        # kept; an absent or empty `filename` is replaced with `unnamed` plus the
        # extension for the file's stored `mime_type`, when known.
        file:,
        # Seconds from upload until the file expires and its bytes become permanently
        # unavailable. Must be between 3600 (one hour) and 7776000 (ninety days).
        expires_in_seconds: nil,
        # Optional header to select the Workspace for this request. The value is a
        # Workspace ID (for example, `wrkspc_011CZkZaBF1tNoB5wlCeusgy`).
        #
        # Only needed for credentials that can act on more than one Workspace. A
        # credential that belongs to a specific Workspace may omit it; if sent, it must
        # match that Workspace.
        workspace_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            file: Anthropic::Internal::FileInput,
            expires_in_seconds: Integer,
            workspace_id: String,
            request_options: Anthropic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
