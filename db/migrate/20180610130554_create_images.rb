# frozen_string_literal: true

class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text     :url, null: false
      t.string   :imageable_type, null: false
      t.integer  :imageable_id, null: false

      t.timestamps
    end
  end
end
