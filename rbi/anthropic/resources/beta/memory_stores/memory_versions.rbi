# typed: strong

module Anthropic
  module Resources
    class Beta
      class MemoryStores
        class MemoryVersions
          # Retrieve a memory version
          sig do
            params(
              memory_version_id: String,
              memory_store_id: String,
              view:
                Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryView::OrSymbol,
              betas:
                T::Array[T.any(Anthropic::AnthropicBeta::OrSymbol, String)],
              workspace_id: String,
              request_options: Anthropic::RequestOptions::OrHash
            ).returns(
              Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryVersion
            )
          end
          def retrieve(
            # Path param
            memory_version_id,
            # Path param
            memory_store_id:,
            # Query param: Selects which projection of a `memory` or `memory_version` the
            # server returns. `basic` returns the object with `content` set to `null`; `full`
            # populates `content`. When omitted, the default is endpoint-specific: retrieve
            # operations default to `full`; list, create, and update operations default to
            # `basic`. Listing with `view=full` caps `limit` at 20.
            view: nil,
            # Header param: Optional header to specify the beta version(s) you want to use.
            betas: nil,
            # Header param: Optional header to select the Workspace for this request. The
            # value is a Workspace ID (for example, `wrkspc_011CZkZaBF1tNoB5wlCeusgy`).
            #
            # Only needed for credentials that can act on more than one Workspace. A
            # credential that belongs to a specific Workspace may omit it; if sent, it must
            # match that Workspace.
            workspace_id: nil,
            request_options: {}
          )
          end

          # List memory versions
          sig do
            params(
              memory_store_id: String,
              api_key_id: String,
              created_at_gte: Time,
              created_at_lte: Time,
              limit: Integer,
              memory_id: String,
              operation:
                Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryVersionOperation::OrSymbol,
              page: String,
              service_account_id: String,
              session_id: String,
              view:
                Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryView::OrSymbol,
              betas:
                T::Array[T.any(Anthropic::AnthropicBeta::OrSymbol, String)],
              workspace_id: String,
              request_options: Anthropic::RequestOptions::OrHash
            ).returns(
              Anthropic::Internal::PageCursor[
                Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryVersion
              ]
            )
          end
          def list(
            # Path param
            memory_store_id,
            # Query param
            api_key_id: nil,
            # Query param: Return versions created at or after this time (inclusive).
            created_at_gte: nil,
            # Query param: Return versions created at or before this time (inclusive).
            created_at_lte: nil,
            # Query param
            limit: nil,
            # Query param
            memory_id: nil,
            # Query param: The kind of mutation a `memory_version` records. Every non-no-op
            # mutation to a memory appends exactly one version row with one of these values.
            operation: nil,
            # Query param
            page: nil,
            # Query param
            service_account_id: nil,
            # Query param
            session_id: nil,
            # Query param: Selects which projection of a `memory` or `memory_version` the
            # server returns. `basic` returns the object with `content` set to `null`; `full`
            # populates `content`. When omitted, the default is endpoint-specific: retrieve
            # operations default to `full`; list, create, and update operations default to
            # `basic`. Listing with `view=full` caps `limit` at 20.
            view: nil,
            # Header param: Optional header to specify the beta version(s) you want to use.
            betas: nil,
            # Header param: Optional header to select the Workspace for this request. The
            # value is a Workspace ID (for example, `wrkspc_011CZkZaBF1tNoB5wlCeusgy`).
            #
            # Only needed for credentials that can act on more than one Workspace. A
            # credential that belongs to a specific Workspace may omit it; if sent, it must
            # match that Workspace.
            workspace_id: nil,
            request_options: {}
          )
          end

          # Redact a memory version
          sig do
            params(
              memory_version_id: String,
              memory_store_id: String,
              betas:
                T::Array[T.any(Anthropic::AnthropicBeta::OrSymbol, String)],
              workspace_id: String,
              request_options: Anthropic::RequestOptions::OrHash
            ).returns(
              Anthropic::Beta::MemoryStores::BetaManagedAgentsMemoryVersion
            )
          end
          def redact(
            # Path param
            memory_version_id,
            # Path param
            memory_store_id:,
            # Header param: Optional header to specify the beta version(s) you want to use.
            betas: nil,
            # Header param: Optional header to select the Workspace for this request. The
            # value is a Workspace ID (for example, `wrkspc_011CZkZaBF1tNoB5wlCeusgy`).
            #
            # Only needed for credentials that can act on more than one Workspace. A
            # credential that belongs to a specific Workspace may omit it; if sent, it must
            # match that Workspace.
            workspace_id: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Anthropic::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
