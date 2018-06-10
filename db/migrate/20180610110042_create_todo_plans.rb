# frozen_string_literal: true

class CreateTodoPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_plans do |t|
      t.references :todo, foreign_key: true
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
