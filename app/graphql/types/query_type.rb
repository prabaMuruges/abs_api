# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :entities, [Types::EntityType], null: false

    field :entity, Types::EntityType, null: true do
      argument :id, ID, required: true
    end

    def entities
      Entity.all
    end

    def entity(id:)
      Entity.find(id)
    end

    field :transactions, [Types::TransactionType], null: false

    field :transaction, Types::TransactionType, null: true do
      argument :id, ID, required: true
    end

    def transactions
      Transaction.all
    end

    def transaction(id:)
      Transaction.find(id)
    end
  end
end
