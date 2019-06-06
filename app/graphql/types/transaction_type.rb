module Types
  class TransactionType < Types::BaseObject
    field :name, String, null: true
    field :type, String, null: true
    field :originator, Types::EntityType, null: true
  end
end
