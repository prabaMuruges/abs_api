# frozen_string_literal: true

module Types
  class EntityType < Types::BaseObject
    field :name, String, null: true
    field :cin, String, null: true
    field :transactions, [Types::TransactionType], null: true
  end
end
