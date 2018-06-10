# frozen_string_literal: true

class DiaryComment < ApplicationRecord
  belongs_to :diary
  has_many :images, as: :imageable, dependent: :destroy
end
