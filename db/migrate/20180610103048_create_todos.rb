# frozen_string_literal: true

class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string      :title, null: false
      t.text        :image
      t.text        :url
      t.string      :caution
      t.integer     :eager_status, null: false, default: 0, limit: 1
      t.integer    :executed_status, null: false, default: 0, limit: 1
      t.references  :user, foreign_key: true

      t.timestamps
    end
    add_index :todos, [:title, :eager_status]
  end
end
