# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :name
      t.string :type
      t.references :originator, foreign_key: { to_table: :entities }

      t.timestamps
    end
  end
end
