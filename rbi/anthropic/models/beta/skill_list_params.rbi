# typed: strong

module Anthropic
  module Models
    module Beta
      class SkillListParams < Anthropic::Internal::Type::BaseModel
        extend Anthropic::Internal::Type::RequestParameters::Converter
        include Anthropic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::SkillListParams,
              Anthropic::Internal::AnyHash
            )
          end

        # Number of results to return per page.
        #
        # Ranges from `1` to `1000`. Defaults to `20`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Pagination token for fetching a specific page of results.
        #
        # Pass the value from a previous response's `next_page` field to get the next page
        # of results.
        sig { returns(T.nilable(String)) }
        attr_accessor :page

        # Filter skills by source.
        #
        # If provided, only skills from the specified source will be returned:
        #
        # - `"custom"`: only return user-created skills
        # - `"anthropic"`: only return Anthropic-created skills
        sig { returns(T.nilable(String)) }
        attr_accessor :source

        # Optional header to specify the beta version(s) you want to use.
        sig do
          returns(
            T.nilable(
              T::Array[T.any(Anthropic::AnthropicBeta::OrSymbol, String)]
            )
          )
        end
        attr_reader :betas

        sig do
          params(
            betas: T::Array[T.any(Anthropic::AnthropicBeta::OrSymbol, String)]
          ).void
        end
        attr_writer :betas

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
            limit: Integer,
            page: T.nilable(String),
            source: T.nilable(String),
            betas: T::Array[T.any(Anthropic::AnthropicBeta::OrSymbol, String)],
            workspace_id: String,
            request_options: Anthropic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Number of results to return per page.
          #
          # Ranges from `1` to `1000`. Defaults to `20`.
          limit: nil,
          # Pagination token for fetching a specific page of results.
          #
          # Pass the value from a previous response's `next_page` field to get the next page
          # of results.
          page: nil,
          # Filter skills by source.
          #
          # If provided, only skills from the specified source will be returned:
          #
          # - `"custom"`: only return user-created skills
          # - `"anthropic"`: only return Anthropic-created skills
          source: nil,
          # Optional header to specify the beta version(s) you want to use.
          betas: nil,
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
              limit: Integer,
              page: T.nilable(String),
              source: T.nilable(String),
              betas:
                T::Array[T.any(Anthropic::AnthropicBeta::OrSymbol, String)],
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
end
