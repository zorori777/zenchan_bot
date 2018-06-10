# frozen_string_literal: true

class CreatePlanComments < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_comments do |t|
      t.text       :impressions, null: false
      t.integer    :impressional_status, null: false, default: 0, limit: 1
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
