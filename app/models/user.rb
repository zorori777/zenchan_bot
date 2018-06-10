# frozen_string_literal: true

class User < ApplicationRecord
  has_many :plans, dependent: :destroy
end
