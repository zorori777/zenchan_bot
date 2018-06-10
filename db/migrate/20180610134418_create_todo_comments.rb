# frozen_string_literal: true

class CreateTodoComments < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_comments do |t|
      t.text       :impressions, null: false
      t.integer    :impressional_status, null: false, default: 0, limit: 1
      t.references :todo, foreign_key: true

      t.timestamps
    end
  end
end
