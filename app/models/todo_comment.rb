# frozen_string_literal: true

class TodoComment < ApplicationRecord
  belongs_to :todo
  has_many :images, as: :imageable, dependent: :destroy
end
