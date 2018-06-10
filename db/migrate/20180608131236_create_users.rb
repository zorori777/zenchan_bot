# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name,  null: false
      t.text   :image

      t.timestamps
    end
  end
end
