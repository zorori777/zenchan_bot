# frozen_string_literal: true

class CreateDiaryComments < ActiveRecord::Migration[5.2]
  def change
    create_table :diary_comments do |t|
      t.text       :impressions, null: false
      t.integer    :impressional_status, null: false, default: 0, limit: 1
      t.references :diary, foreign_key: true

      t.timestamps
    end
  end
end
