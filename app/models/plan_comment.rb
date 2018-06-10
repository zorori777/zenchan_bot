# frozen_string_literal: true

class PlanComment < ApplicationRecord
  has_many :images, as: :imageable, dependent: :destroy
end
