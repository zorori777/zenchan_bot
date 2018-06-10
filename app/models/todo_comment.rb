# frozen_string_literal: true

class TodoComment < ApplicationRecord
  has_many :images, as: :imageable, dependent: :destroy
end
