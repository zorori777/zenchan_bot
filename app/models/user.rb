# frozen_string_literal: true

class User < ApplicationRecord
  has_many :plans, dependent: :destroy
  has_many :todos, dependent: :destroy
end
