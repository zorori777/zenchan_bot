# frozen_string_literal: true

class PlanComment < ApplicationRecord
  belongs_to :plan
  has_many :images, as: :imageable, dependent: :destroy
end
