# typed: strong

module Anthropic
  module Models
    module Beta
      class UserProfileListParams < Anthropic::Internal::Type::BaseModel
        extend Anthropic::Internal::Type::RequestParameters::Converter
        include Anthropic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Anthropic::Beta::UserProfileListParams,
              Anthropic::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # ListOrder enum
        sig do
          returns(
            T.nilable(Anthropic::Beta::UserProfileListParams::Order::OrSymbol)
          )
        end
        attr_reader :order

        sig do
          params(
            order: Anthropic::Beta::UserProfileListParams::Order::OrSymbol
          ).void
        end
        attr_writer :order

        # Sort field for listing user profiles: `created_at` (default) or `name`
        # (case-insensitive; profiles without a name sort last).
        sig do
          returns(
            T.nilable(Anthropic::Beta::UserProfileListParams::OrderBy::OrSymbol)
          )
        end
        attr_reader :order_by

        sig do
          params(
            order_by: Anthropic::Beta::UserProfileListParams::OrderBy::OrSymbol
          ).void
        end
        attr_writer :order_by

        sig { returns(T.nilable(String)) }
        attr_reader :page

        sig { params(page: String).void }
        attr_writer :page

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

        sig { returns(T.nilable(String)) }
        attr_reader :workspace_id

        sig { params(workspace_id: String).void }
        attr_writer :workspace_id

        sig do
          params(
            limit: Integer,
            order: Anthropic::Beta::UserProfileListParams::Order::OrSymbol,
            order_by: Anthropic::Beta::UserProfileListParams::OrderBy::OrSymbol,
            page: String,
            betas: T::Array[T.any(Anthropic::AnthropicBeta::OrSymbol, String)],
            workspace_id: String,
            request_options: Anthropic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          limit: nil,
          # ListOrder enum
          order: nil,
          # Sort field for listing user profiles: `created_at` (default) or `name`
          # (case-insensitive; profiles without a name sort last).
          order_by: nil,
          page: nil,
          # Optional header to specify the beta version(s) you want to use.
          betas: nil,
          workspace_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              limit: Integer,
              order: Anthropic::Beta::UserProfileListParams::Order::OrSymbol,
              order_by:
                Anthropic::Beta::UserProfileListParams::OrderBy::OrSymbol,
              page: String,
              betas:
                T::Array[T.any(Anthropic::AnthropicBeta::OrSymbol, String)],
              workspace_id: String,
              request_options: Anthropic::RequestOptions
            }
          )
        end
        def to_hash
        end

        # ListOrder enum
        module Order
          extend Anthropic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Anthropic::Beta::UserProfileListParams::Order)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              Anthropic::Beta::UserProfileListParams::Order::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              Anthropic::Beta::UserProfileListParams::Order::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Anthropic::Beta::UserProfileListParams::Order::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sort field for listing user profiles: `created_at` (default) or `name`
        # (case-insensitive; profiles without a name sort last).
        module OrderBy
          extend Anthropic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Anthropic::Beta::UserProfileListParams::OrderBy)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED_AT =
            T.let(
              :created_at,
              Anthropic::Beta::UserProfileListParams::OrderBy::TaggedSymbol
            )
          NAME =
            T.let(
              :name,
              Anthropic::Beta::UserProfileListParams::OrderBy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Anthropic::Beta::UserProfileListParams::OrderBy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
