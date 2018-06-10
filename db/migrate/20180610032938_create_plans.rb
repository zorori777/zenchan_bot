# frozen_string_literal: true

class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string     :title, null: false
      t.string     :appointed_place
      t.integer    :executed_status, null: false, default: 0, limit: 1
      t.datetime   :appointed_at
      t.datetime   :executed_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
