# frozen_string_literal: true

class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.string     :title, null: false
      t.text       :contents, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :diaries, :title
  end
end
