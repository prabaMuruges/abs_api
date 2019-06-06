# frozen_string_literal: true

class Entity < ApplicationRecord
  has_many :transactions, foreign_key: :originator_id
end
