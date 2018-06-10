# frozen_string_literal: true

class Diary < ApplicationRecord
  belongs_to :user
  has_many :images, as: :imageable, dependent: :destroy
end
