# frozen_string_literal: true

class Diary < ApplicationRecord
  belongs_to :user
  has_many   :images, as: :imageable, dependent: :destroy
  has_many   :likes, as: :likeable, dependent: :destroy
  has_many   :diary_comments, dependent: :destroy
end
